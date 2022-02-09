import pandas as pd
import numpy as np
import os

def Non_clust_SV_burden(file):

file['Non_clustering_SV_burden'] = file['non-clustered_del_1-10Kb'] + file['non-
clustered_del_10-100Kb'] + file['non-clustered_del_100Kb-1Mb'] + file['non-
clustered_del_1Mb-10Mb'] + file['non-clustered_del_>10Mb'] + file['non-
clustered_tds_1-10Kb'] + file['non-clustered_tds_10-100Kb'] + file['non-
clustered_tds_100Kb-1Mb'] + file['non-clustered_tds_1Mb-10Mb'] + file['non-
clustered_tds_>10Mb'] + file['non-clustered_inv_1-10Kb'] + file['non-
clustered_inv_10-100Kb'] + file['non-clustered_inv_100Kb-1Mb'] + file['non-
clustered_inv_1Mb-10Mb'] + file['non-clustered_inv_>10Mb'] + file['non-
clustered_trans']

def clust_SV_burden(file):
#creates a new column with total number of clustering mutations in each
sample
file['clustering_SV_burden'] = file['clustered_del_1-10Kb'] +
file['clustered_del_10-100Kb'] + file['clustered_del_100Kb-1Mb'] +
file['clustered_del_1Mb-10Mb'] + file['clustered_del_>10Mb'] +
file['clustered_tds_1-10Kb'] + file['clustered_tds_10-100Kb'] +
file['clustered_tds_100Kb-1Mb'] + file['clustered_tds_1Mb-10Mb'] +
file['clustered_tds_>10Mb'] + file['clustered_inv_1-10Kb'] + file['clustered_inv_10-
100Kb'] + file['clustered_inv_100Kb-1Mb'] + file['clustered_inv_1Mb-10Mb'] +
file['clustered_inv_>10Mb'] + file['clustered_trans']

def total_SV_burden(file):
#creates a new column with total number of clustering and nonclustering
mutations in each sample
file['total_SV_burden'] = file['clustered_del_1-10Kb'] + file['clustered_del_10-
100Kb'] + file['clustered_del_100Kb-1Mb'] + file['clustered_del_1Mb-10Mb'] +
file['clustered_del_>10Mb'] + file['clustered_tds_1-10Kb'] + file['clustered_tds_10-
100Kb'] + file['clustered_tds_100Kb-1Mb'] + file['clustered_tds_1Mb-10Mb'] +
file['clustered_tds_>10Mb'] + file['clustered_inv_1-10Kb'] + file['clustered_inv_10-
100Kb'] + file['clustered_inv_100Kb-1Mb'] + file['clustered_inv_1Mb-10Mb'] +
file['clustered_inv_>10Mb'] + file['clustered_trans'] + file['non-clustered_del_1-
10Kb'] + file['non-clustered_del_10-100Kb'] + file['non-clustered_del_100Kb-1Mb']

+ file['non-clustered_del_1Mb-10Mb'] + file['non-clustered_del_>10Mb'] + file['non-
clustered_tds_1-10Kb'] + file['non-clustered_tds_10-100Kb'] + file['non-
clustered_tds_100Kb-1Mb'] + file['non-clustered_tds_1Mb-10Mb'] + file['non-
clustered_tds_>10Mb'] + file['non-clustered_inv_1-10Kb'] + file['non-
clustered_inv_10-100Kb'] + file['non-clustered_inv_100Kb-1Mb'] + file['non-
clustered_inv_1Mb-10Mb'] + file['non-clustered_inv_>10Mb'] + file['non-

clustered_trans']
