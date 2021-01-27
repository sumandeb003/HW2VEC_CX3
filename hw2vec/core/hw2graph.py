#TODO: 
from optparse import OptionParser
import os
import sys

import pyverilog
from pyverilog.dataflow.dataflow_analyzer import VerilogDataflowAnalyzer as DataflowAnalyzer
from pyverilog.dataflow.optimizer import VerilogDataflowOptimizer as DataflowOptimizer
from pyverilog.dataflow.graphgen import VerilogGraphGenerator as GraphGenerator

from json import dumps
class VerilogParser:
    '''
        the only class that interfaces with pyverilog.
    ''' 
    #holds a graph_generator instance
    def __init__(self, verilog_file, output_directory):
        print("Verilog file", verilog_file)
        print("Output directory ", output_directory)
        self.output_directory = output_directory
        self.graph_generator = self._generate_graph(verilog_file)

    #helper fcn to __init__
    def _generate_graph(self, verilog_file):
        dataflow_analyzer = DataflowAnalyzer(verilog_file, 'top')
        dataflow_analyzer.generate()
        binddict = dataflow_analyzer.getBinddict()
        terms = dataflow_analyzer.getTerms()
        
        dataflow_optimizer = DataflowOptimizer(terms, binddict)
        dataflow_optimizer.resolveConstant()
        resolved_terms = dataflow_optimizer.getResolvedTerms()
        resolved_binddict = dataflow_optimizer.getResolvedBinddict()
        constlist = dataflow_optimizer.getConstlist()

        return GraphGenerator('top', terms, binddict, resolved_terms, 
                            resolved_binddict, constlist, 
                            f'{self.output_directory}seperate_modules.pdf')
    
    # This function returns True, if the child is a child of checkParent
    def _isChild(self, graph, checkParent, child):
        # This function recursively returns a list of all the parents of a node up to the root
        def getAllParents(node):
            # if node has no parents
            if graph.in_degree(node) == 0:
                return []
            # if node has no grandparents
            elif sum([graph.in_degree(parent) for parent in graph.predecessors(node)]) == 0:
                return graph.predecessors(node)
            # recursive call, node has unknown generations of parents
            else:
                retlist = list()
                for parent in graph.predecessors(node):
                    x = getAllParents(parent)
                    x.append(parent)
                    retlist += x
                return retlist
        allParents = getAllParents(child)
        return checkParent in allParents

    #generate separate graph separate modules 
    def graph_separate_modules(self,draw_graph=False):
        # binddict with string keys
        signals = [str(bind) for bind in self.graph_generator.binddict]

        print(f'{len(signals)} signals to generate seprate subgraphs...')
        for num, signal in enumerate(sorted(signals, key=str.casefold), start=1):
            self.graph_generator.generate(signal, walk=False)
            print(f'\rProgress : {num} / {len(signals)}', end='', flush=True)
        print('\nThe subgraphs are generated.\n')

        if draw_graph:
            print(f'Saving subgraphs with {len(self.graph_generator.graph.nodes())} nodes as a pdf...')
            self.graph_generator.draw()
            print('The subgraphs are saved.\n')

    #merge the graphs
    def merge_graphs(self, draw_graph=False):
        label_to_node = dict()
        for node in self.graph_generator.graph.nodes():
            if self.graph_generator.graph.in_degree(node) == 0:
                label = node.attr['label'] if node.attr['label'] != '\\N' else str(node)
                label_to_node[label] = node
        
        deleted = 0
        print('Merging subgraphs... ')
        for num, node in enumerate(self.graph_generator.graph.nodes(), start=1):
            label = node.attr['label'] if node.attr['label'] != '\\N' else str(node)
            if '_' in label and label.replace('_', '.') in label_to_node:
                parents = self.graph_generator.graph.predecessors(node)
                self.graph_generator.graph.delete_node(node)
                deleted += 1
                for parent in parents:
                    if not self._isChild(self.graph_generator.graph, label_to_node[label.replace('_', '.')], parent):
                        self.graph_generator.graph.add_edge(parent, label_to_node[label.replace('_', '.')])
            print(f'\rProgress : {num - deleted} / {len(self.graph_generator.graph.nodes())}', end='', flush=True)
        print('\nThe subgraphs are merged.\n')

        if draw_graph:
            print(f'Saving merged graph with {len(self.graph_generator.graph.nodes())} nodes as a pdf...')
            self.graph_generator.draw(f'{self.output_directory}merged.pdf')
            print('The graphs are saved.\n')

    #export the graphs
    def export_graphs(self):
        root_nodes = [node for node in self.graph_generator.graph.nodes() if self.graph_generator.graph.in_degree(node) == 0]
        print(f'Saving {len(root_nodes)} root nodes as a json...')
        with open(f'{self.output_directory}root_nodes.json', 'w') as f:
            f.write(dumps(root_nodes, indent=4))
        print('List of root nodes saved in root_nodes.json.\n')
        f.close()
        
        all_nodes = (self.graph_generator.graph.nodes())
        print(f'Saving all {len(all_nodes)} nodes as a json...')
        with open(f'{self.output_directory}all_nodes.json', 'w') as f:
            f.write(dumps(all_nodes, indent=4))
        print('List of nodes saved in all_nodes.json.\n')
        f.close()
        
        all_edges = list()
        for edge in self.graph_generator.graph.edges():
            all_edges.append((edge[0], edge[1], edge.attr['label']))
        print(f'Saving all {len(all_edges)} edges as a json...')
        with open(f'{self.output_directory}all_edges.json', 'w') as f:
            f.write(dumps(all_edges, indent=4))
        print('List of edges is saved in all_edges.json.\n')
        f.close()
        
        jsondict = {}
        for node in self.graph_generator.graph.nodes():
            jsondict[str(node)] = list()
            for child in self.graph_generator.graph.successors(node):
                edgeLabel = self.graph_generator.graph.get_edge(node, child).attr['label']
                jsondict[str(node)].append((edgeLabel, str(child)))
        print(f'Saving graph dictionary as a json...')
        f = open(f'{self.output_directory}topModule.json', 'w')
        jsonstr = dumps(jsondict, indent=4)
        f.write(jsonstr)
        f.close()
        print('The Graph is saved as topModule.json.\n')

    #to be refactored
    def graph_input_dependencies(self,draw_graph=False):
        labeltoNames = dict()
        for node in self.graph_generator.graph.nodes():
            label = node.attr['label'] if node.attr['label'] != '\\N' else str(node)
            if label not in labeltoNames: 
                labeltoNames[label] = list()
            labeltoNames[label].append(str(node))

        inputs = [self.graph_generator.graph.get_node(*labeltoNames[str(term).replace('.', '_')]) for x, term in zip(self.graph_generator.terms, self.graph_generator.terms.values()) if len(x.get_module_list()) == 1 and 'Input' in term.termtype]

        print('Locating nodes not connected to inputs...')
        to_delete = list()
        for num, node in enumerate(self.graph_generator.graph.nodes(), start=1):
            label = node.attr['label'] if node.attr['label'] != '\\N' else str(node)
            if label not in inputs:
                x = True
                for input_ in inputs:
                    if self._isChild(self.graph_generator.graph, node, input_):
                        x = False
                if x == True:
                    to_delete.append(node)
            print(f'\rProgress : {num} / {len(self.graph_generator.graph.nodes())}', end='', flush=True)
        print('\nRemoving nodes not connected to inputs...')
        for num, node in enumerate(to_delete, start=1):
            self.graph_generator.graph.delete_node(node)
            print(f'\rProgress : {num} / {len(to_delete)}', end='', flush=True)
        print('\nRemoval is complete.\n')
        
        if draw_graph:   
            print(f'Saving graph with {len(self.graph_generator.graph.nodes())} nodes as a pdf...')
            self.graph_generator.draw(f'{self.output_directory}input_dependencies.pdf')
            print('Graph saved.\n')

class RTLDFGGenerator:
    '''
        This generator generates DFG from RTL code.
    '''
    def __init__(self, code_language='verilog'):
        if code_language == "verilog":

            optparser = OptionParser()
            (options, args) = optparser.parse_args()

            p = os.path.dirname(os.path.abspath(__file__))
            sys.path.insert(0, os.path.dirname(p))
            #default code below (will be removed as I refactor)
            
            if len(args) != 1:
                
                dataset_name = "complete_dataset"
                os.chdir("../")
                os.chdir("../")
                #current_directory = os.path.dirname(os.path.abspath(__file__))  
                current_directory = r"C:\Users\willi\OneDrive\Documents\Projects\GNN4TJ"
                for TJ in ["TjIn", "TjFree"]:
                    #data_directory = f"{current_directory}/data/TJ-datasets/data_graphs/{dataset_name}/{TJ}"
                    data_directory = f"{current_directory}/data_raw/{dataset_name}/{TJ}"
                    print("Reading all ", TJ, "data from ", data_directory, "\n")
                    data_list = [x[1] for x in os.walk(data_directory)]
                    if not data_list:
                        raise IOError("data not found in ", data_directory)
                    for data_name in data_list[0]:
                        print("Benchmark: ", data_name)
                        input_directory = f"{data_directory}/{data_name}/topModule.v"
                        output_directory = f"{current_directory}/MIGRATION_TEST/data_graphs/{dataset_name}/{TJ}/{data_name}/"
                        print(f'Outputting to : {output_directory}\n')
                        if not os.path.exists(f'{output_directory}'):
                            os.makedirs(os.path.dirname(f'{output_directory}'))  
                            self.parse_verilog_file(input_directory,output_directory)
                            
                        print("------------------------------------------------------------------------")
                            
            else:
                if not os.path.exists(args[0]):
                    raise IOError("file not found: " + args[0])
                    
                current_directory = os.path.dirname(os.path.abspath(__file__))    
                input_directory = args[0]
                print("Reading ", input_directory)
                output_directory = f"{current_directory}/graphs/"
                print(f'Outputting to : {output_directory}\n')
                if not os.path.exists(f'{output_directory}'):
                        os.makedirs(os.path.dirname(f'{output_directory}'))  
                self.parse_verilog_file(input_directory, output_directory)
   
    def parse_verilog_file(self, verilog_file, output_directory):

        verilog_parser = VerilogParser(verilog_file, output_directory)
        verilog_parser.graph_separate_modules()
        verilog_parser.merge_graphs()
        verilog_parser.export_graphs()
        #verilog_parser.graph_input_dependencies()

class NetlistDFGGenerator:
    '''
        This generator generates DFG from Netlist code.
    '''
    def __init__(self, code_language="verilog"):
        if code_language == "verilog":
            self.parser = VerilogParser()

    def generate(self):
        pass


class RTLCFGGenerator:
    '''
        This generator generates the Control Flow Graph (CFG) from RTL verilog code.
    '''
    def __init__(self, code_language="verilog"):
        if code_language == "verilog":
            self.parser = VerilogParser()

    def generate(self):
        pass


class NetlistCFGGenerator:
    '''
        This generator generates CFG from Netlist code.
    '''
    def __init__(self, code_language="verilog"):
        if code_language == "verilog":
            self.parser = VerilogParser()

    def generate(self):
        pass

#TODO: check FSM?

def preprocess_verilog():
    # its going to example script: parse_verilog_2_graph.py
    # use case 1: 
    #import hw2graph.RTLDFGGenerator
    parser = RTLDFGGenerator()
    #parser.parse('''one or multiple RTLs''')
    #parser.export("some file name", type="json")

if __name__ == "__main__":
    # This part will eventually goes to example script or test cases.

    preprocess_verilog()