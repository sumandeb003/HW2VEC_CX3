import os
#import torch
#from torch_geometric.data import download_url, extract_zip

#id = '1mgBILYWXRyY9jAXeslmpKgwilP1etvSs'
#url = f'https://drive.usercontent.google.com/download?id={id}&confirm=t'

#path = download_url(url, os.path.join(os.getcwd(),'raw'))
#extract_zip(path,'raw')
try:
    os.remove('log.log')
    logger = open('log.log','w')
except:
    pass
print ("Hello World2",file=logger)
logger.close()