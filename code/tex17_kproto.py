#tex17_kproto.py
### TEXATA2017 K-prototyping of continuous and categorical data
### Adam Vaccaro (avaccaro@usc.edu)

# import packages
import csv
import numpy as np
from kmodes.kmodes import KModes
import datetime

#start_time = 
# open .csv
with open('../data/results-20170930-111122.csv','r') as fid:
	reader = csv.DictReader(fid)
	for row in reader:
		row['listened_at'] = datetime.strptime(row['listened_at'],'%Y-%m-%d %H:%M:%S.%f %Z')
		#row['listed_at'] =

# k-prototyping cluserting
km = kmodes.KModes(n_clusters=20, init='Huang', n_init=5, verbose=1)

clusters = km.fit_predict(reader)

# Print the cluster centroids
print(km.cluster_centroids_)