import os, sys, argparse
sys.path.append(os.path.dirname(sys.path[0]))
from hw2vec.hw2graph import *
from hw2vec.config import Config
from pathlib import Path
import glob, shutil
import torch

def delete_dotptfiles_in_all_subdirectories(cfg, directory_path):
	for subdir in os.listdir(directory_path):
		subdir_path = os.path.join(directory_path,subdir)
		for circuit in os.listdir(subdir_path):
			if circuit.endswith(f'{cfg.graph_type}.pt'):
				circuit_path = os.path.join(subdir_path,circuit)
				print('Deleting the old: ', circuit_path, file = logger)
				os.remove(circuit_path)


def TrustHub_to_graph(cfg, circuit_path, copy_folder):
    hw2graph = HW2GRAPH(cfg)
    hw_design_path = hw2graph.preprocess(circuit_path) #flatten all .v files to one .v file, remove comments, remove underscores, rename as topModule.v
    hardware_nxgraph = hw2graph.process(hw_design_path) #generate AST/DFG (JSON format) of the topModule.v
    data_proc = DataProcessor(cfg)
    data_proc.process(hardware_nxgraph)#normalize the graph and create node-feature vectors X and adjacency matrix A
    #TJIN = 1
    #TJFREE = 0
    data = data_proc.get_graphs()
    print (f'TrustHub_to_graph: data - {data}', file = logger)
    hw_design = str(hw_design_path).split("/")[-2].replace('_','-')
    if "TjFree" == str(hw_design_path).split("/")[-3]:
    	data[0].label = 'TjFree'
    else:
    	data[0].label = 'TjIn'
    file = os.path.join(circuit_path, f'{hw_design}_{data[0].label}_topModule_{cfg.graph_type}.pt')
    torch.save(data[0], file)
    shutil.copy2(file, copy_folder)


if __name__ == '__main__':
    #redirect output messages - print statements - to a log file
    print('Starting...')
    logger = open('TrustHub2graph.log','w')
    
    parser = argparse.ArgumentParser(description='Choose type of target graph')
    parser.add_argument("-g", "--graphtype", type = str, default = 'DFG', help = "Supply type of target graph - AST, DFG, or UG (undirected graph)")
    args = parser.parse_args()
    assert args.graphtype in ['DFG', 'AST', 'UG']
    cfg.graph_type = args.graphtype
    print(f'Converting circuits to {cfg.graph_type}s', file = logger)
    
    try:
    	os.remove('TrustHub2graph.log')
    except:
    	pass
    
    directory_path = '../assets/datasets/MyTrustHub4GraphGPS/try' #like, path to TjFree or TjIn
    #delete all previous .pt files in all sub-directories of directory_path
    delete_dotptfiles_in_all_subdirectories(cfg, directory_path)
    
    dst_folder = os.path.join(directory_path,'TrustHubGraphDataset')
    if not os.path.exists(dst_folder):
        os.makedirs(dst_folder)
    
    graph_folder = os.path.join(dst_folder, cfg.graph_type)
    if not os.path.exists(graph_folder):
        os.makedirs(graph_folder)

    #create new .pt files
    #cfg = Config(sys.argv[1:]) #because of the following 4 lines, the statement 'cfg = Config(sys.argv[1:]) has no use
    #iterate through all folders in TjFree
    for type in ['TjFree', 'TjIn']:
        type_path = os.join(directory_path, type)
        for circuit in os.listdir(type_path):
            circuit_path = Path(os.path.join(type_path,circuit))
            print('===================================================================', file = logger)
            print (f'TrustHub_to_graph: circuit - {circuit_path}', file = logger)
            print (f'TrustHub_to_graph: graphtype - {cfg.graph_type}', file = logger)
            #create graph for each circuit
            try:
                TrustHub_to_graph(cfg, circuit_path, graph_folder)
            except Exception as error:
                print("ERROR:	", type(error).__name__, "–", error, file = logger)
            
            #copy_all_dotptfiles(circuit_path, dst_folder)
            print('===================================================================', file = logger)
    
    #zip all the graphs
    zippedfile = f'TrustHub{cfg.graph_type}s.zip'
    zippedfile = os.path.join(dst_folder, zippedfile)
    cmd1 = 'zip ' + zippedfile + ' -r ' + graph_folder
    cmd2 = 'rm -r ' + graph_folder
    os.system(cmd1 + ' | ' + cmd2)
    logger.close()
    print('Finished...')