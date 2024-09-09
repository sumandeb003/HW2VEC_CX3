import os, sys
sys.path.append(os.path.dirname(sys.path[0]))
from hw2vec.hw2graph import *
from hw2vec.config import Config
from pathlib import Path
import glob, shutil
import torch
from torch_geometric.data import (download_google_url,extract_zip,)

def delete_all_dotptfiles_in_all_subdirectories(directory_path):
	for subdir in os.listdir(directory_path):
		subdir_path = os.path.join(directory_path,subdir)
		for circuit in os.listdir(subdir_path):
			if circuit.endswith('.pt'):
				circuit_path = os.path.join(subdir_path,circuit)
				print('Deleting: ', circuit_path, file = logger)
				os.remove(circuit_path)

def copy_all_dotptfiles(src_folder, dst_folder):
    if not os.path.exists(dst_folder):
        os.makedirs(dst_folder)
    files = glob.iglob(os.path.join(circuit_path, '*.pt'))
    for file in files:
        shutil.copy2(file, dst_folder)


def TrustHub_to_graph(cfg, circuit_path):
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
    save_path = os.path.join(circuit_path, f'{hw_design}_{data[0].label}_topModule_{cfg.graph_type}.pt')
    torch.save(data[0], save_path)

if __name__ == '__main__':
    #redirect output messages - print statements - to a log file
    print('starting...')
    try:
    	os.remove('TrustHub2graph.log')
        logger = open('TrustHub2graph.log','w')
    except:
    	pass
    #log = open('TrustHub2graph.log', 'a')
    #sys.stdout = log
    #delete all previous .pt files in all sub-directories of directory_path
    directory_path = '../assets/datasets/MyTrustHub4GraphGPS' #like, path to TjFree or TjIn
    print('starting: delete_all_dotptfiles_in_all_subdirectories(directory_path)', file = logger)
    dst_folder = os.path.join(directory_path,'TrustHubGraphDataset')
    delete_all_dotptfiles_in_all_subdirectories(directory_path)
    print ('done: delete_all_dotptfiles_in_all_subdirectories(directory_path)', file = logger)
    #create new .pt files
    cfg = Config(sys.argv[1:]) #because of the following 4 lines, the statement 'cfg = Config(sys.argv[1:]) has no use
    #iterate through all folders in TjFree
    for type in ['TjFree', 'TjIn']:
        type_path = os.join(directory_path, type)
        for circuit in os.listdir(type_path):
            circuit_path = Path(os.path.join(type_path,circuit))
            print('===================================================================', file = logger)
            print (f'TrustHub_to_graph: circuit - {circuit_path}', file = logger)
            #do both AST and DFG
            for graphtype in ['AST', 'DFG']:
                cfg.graph_type = graphtype
                print (f'TrustHub_to_graph: graphtype - {cfg.graph_type}', file = logger)
                try:
                    TrustHub_to_graph(cfg, circuit_path)
                except Exception as error:
                    print("ERROR:	", type(error).__name__, "–", error, file = logger)
            
            copy_all_dotptfiles(circuit_path, dst_folder)
            print('===================================================================', file = logger)
    
    #zip all the graphs
    zippedfile = os.path.join(directory_path, 'TrustHubGraphDataset.zip')
    cmd = 'zip ' + zippedfile + ' -r ' + dst_folder
    os.system(cmd)
    print('Finished...')
    #id ='1mgBILYWXRyY9jAXeslmpKgwilP1etvSs'
    #download_google_url(id,os.getcwd(),'try.zip')
    #extract_zip('try.zip','try')
    #??
    #os.rename(osp.join(self.root, 'asqol_graph_raw'), self.raw_dir)
    #os.unlink(path)

    #log.close()
