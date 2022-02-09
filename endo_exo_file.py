import pandas as pd
import numpy as np



df = pd.read_csv('/Users/rabiram470/Desktop/PCAWG_master_table.csv')

categories = ["Endogenous", "Endogenous", "Endogenous", "Exogenous", "Unknown", "Endogenous", "Exogenous", "Exogenous", "Exogenous", "Exogenous", "Unknown", "Endogenous", "Endogenous", "Endogenous", "Exogenous", "Unknown", "Endogenous", "Endogenous", "Endogenous", "Unknown", "Unknown", "Unknown", "Endogenous", "Unknown", "Endogenous", "Endogenous", "Exogenous", "Unknown", "Exogenous", "Exogenous", "Endogenous", "Artefact", "Unknown", "Exogenous", "Endogenous", "Exogenous", "Exogenous", "Unknown", "Unknown", "Exogenous", "Endogenous", "Unknown", "Exogenous", "Unknown", "Unknown", "Unknown", "Exogenous", "Artefact", "Endogenous", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact"]
etiologies = ["Spontaneous deamination of 5-methylcytosine (clock-like signature)", 
"Activity of APOBEC family of cytidine deaminases", "Defective homologous recombination DNA damage repair", 
"Tobacco smoking", "Unknown", "Defective DNA mismatch repair", "Ultraviolet light exposure", "Ultraviolet light exposure", "Ultraviolet light exposure", "Ultraviolet light exposure", 
"Unknown", "Polimerase eta somatic hypermutation activity", "Polymerase epsilon exonuclease domain mutations", "Polymerase epsilon exonuclease domain mutations", "Temozolomide treatment", "Unknown", 
"Activity of APOBEC family of cytidine deaminases", "Concurrent polymerase epsilon mutation and defective DNA mismatch repair", "Defective DNA mismatch repair", "Unknown", "Unknown", "Unknown", 
"Damage by reactive oxygen species", "Unknown", "Concurrent POLD1 mutations and defective DNA mismatch repair", "Defective DNA mismatch repair", "Aristolochic acid exposure", "Unknown", 
"Aflatoxin exposure", "Chemotherapy treatment", "Defective DNA mismatch repair", "Possible sequencing artefacts", "Unknown", "Tobacco chewing", "Defective DNA base excision repair due to NTHL1 mutations", 
"Platinum chemotherapy treatment", "Azathioprine treatment", "Unknown", "Unknown", "Platinum chemotherapy treatment", "Defective DNA base excision repair due to MUTYH mutations", "Unknown", 
"Indirect effect of ultraviolet light", "Unknown", "Unknown", "Unknown", "Haloalkane exposure", "Possible sequencing artefact", "Defective DNA mismatch repair", "Possible sequencing artefact", 
"Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", 
"Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", 
"Possible sequencing artefact"]    
sbs_repair = [5, 11, 12, 13, 17, 18, 24, 25, 34, 48]
for n in sbs_repair:
    categories[n] = "SBS Repair"

#Renaming nonsensical column name.
df = df.rename(columns={'Unnamed: 0': 'Patient No.'})


#Adding 2 rows at the top to provide for each SBS mutation's source, and proposed mutation aetiology.
df.loc[-2] = 0  
df.loc[-1] = 0  
df = df.sort_index()  

#Renaming the row indices.
df = df.rename(index={-2:'Source', -1:'Proposed Aetiology'})

#Adding in Source and Proposed Aetiology data
#Data is retrieved from COSMIC Mutational Signatures v3.1
#https://cancer.sanger.ac.uk/cosmic/signatures/SBS/index.tt

#Source data:
#df.loc["Source", "SBS1":"SBS60"] = ["Endogenous", "Endogenous", "Endogenous", "Exogenous", "Unknown", "Endogenous", "Exogenous", "Exogenous", "Exogenous", "Exogenous", "Unknown", "Endogenous", "Endogenous", "Endogenous", "Exogenous", "Unknown", "Endogenous", "Endogenous", "Endogenous", "Unknown", "Unknown", "Unknown", "Endogenous", "Unknown", "Endogenous", "Endogenous", "Exogenous", "Unknown", "Exogenous", "Exogenous", "Endogenous", "Artefact", "Unknown", "Exogenous", "Endogenous", "Exogenous", "Exogenous", "Unknown", "Unknown", "Exogenous", "Endogenous", "Unknown", "Exogenous", "Unknown", "Unknown", "Unknown", "Exogenous", "Artefact", "Endogenous", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact", "Artefact"]
df.loc["Source", "SBS1":"SBS60"] = categories


#Proposed Aetiology data:
# df.loc["Proposed Aetiology", "SBS1":"SBS60"] = 
# ["Spontaneous deamination of 5-methylcytosine (clock-like signature)", 
#  "Activity of APOBEC family of cytidine deaminases", "Defective homologous recombination DNA damage repair", 
#  "Tobacco smoking", "Unknown", "Defective DNA mismatch repair", "Ultraviolet light exposure", "Ultraviolet light exposure", "Ultraviolet light exposure", "Ultraviolet light exposure", 
#  "Unknown", "Polimerase eta somatic hypermutation activity", "Polymerase epsilon exonuclease domain mutations", "Polymerase epsilon exonuclease domain mutations", "Temozolomide treatment", "Unknown", 
#  "Activity of APOBEC family of cytidine deaminases", "Concurrent polymerase epsilon mutation and defective DNA mismatch repair", "Defective DNA mismatch repair", "Unknown", "Unknown", "Unknown", 
#  "Damage by reactive oxygen species", "Unknown", "Concurrent POLD1 mutations and defective DNA mismatch repair", "Defective DNA mismatch repair", "Aristolochic acid exposure", "Unknown", 
#  "Aflatoxin exposure", "Chemotherapy treatment", "Defective DNA mismatch repair", "Possible sequencing artefacts", "Unknown", "Tobacco chewing", "Defective DNA base excision repair due to NTHL1 mutations", 
#  "Platinum chemotherapy treatment", "Azathioprine treatment", "Unknown", "Unknown", "Platinum chemotherapy treatment", "Defective DNA base excision repair due to MUTYH mutations", "Unknown", 
#  "Indirect effect of ultraviolet light", "Unknown", "Unknown", "Unknown", "Haloalkane exposure", "Possible sequencing artefact", "Defective DNA mismatch repair", "Possible sequencing artefact", 
#  "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", 
#  "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", "Possible sequencing artefact", 
#  "Possible sequencing artefact"]

df.loc["Proposed Aetiology", "SBS1":"SBS60"] = etiologies

# base_repair = ["Defective DNA mismatch repair"]
# sigToEtiology = dict(zip())

#Replacing 0s from unfilled cells with N/A for neatness and for checking the consistency of our "Source" data values by testing their categories:
for col in df:
    if df.loc["Source",col] == 0:
         df.loc["Source",col] = "N/A"
    if df.loc["Proposed Aetiology",col] == 0:
        df.loc["Proposed Aetiology",col] = "N/A"


#Testing "Source" data type consistency by looking at the categories it generates - important to ensure the absence of typing errors for later classification purposes in the endogenous/exogenous count
print("""The following lists the "Source" values and their categories:

""")
#print(df.loc["Source"].astype('category'), "\n")


#To establish some content, let us count how many SBS signatures have an exogenous origin and how many have an endogenous origin
Endogenous_count = 0
Exogenous_count = 0
for col in df:
    if df[col]["Source"] == "Endogenous":
        Endogenous_count += 1
    if df[col]["Source"] == "Exogenous":
        Exogenous_count +=1

print("Total number of SBS signatures that PCAWG has provided data for: 65")
print("Total number of SBS signatures that can be classified as having either an endogenous or exogenous origin:", Endogenous_count + Exogenous_count)
print("Total number of endogenous-induced SBS signatures:", Endogenous_count)
print("Total number of exogenous-induced SBS signatures:", Exogenous_count, "\n")


#We will also calculate for each patient how many of their total SBS mutations were endogenous vs exogenous
#Let's first make 2 new columns for us to add our new data to:
df["Total endogenous SBS mutations"] = 0
df["Total exogenous SBS mutations"] = 0

for row_index,row in df.iterrows():
    if row_index == "Source" or row_index == "Proposed Aetiology":
        continue
        for x in range(65):
            if df.loc["Source"]["SBS1":"SBS60"][x] == "Endogenous":
                df.loc[row_index,"Total endogenous SBS mutations"] += row["SBS1":"SBS60"][x]
            if df.loc["Source"]["SBS1":"SBS60"][x] == "Exogenous":
                df.loc[row_index,"Total exogenous SBS mutations"] += row["SBS1":"SBS60"][x]

Adding columns for total endogenous/exogenous SBS mutations and to calculate exogenous SBS proportion
df["Total endogenous or exogenous SBS mutations"] = 0
df["Exogenous SBS proportion"] = 0.0

for row_index,row in df.iterrows():
    if row_index == "Source" or row_index == "Proposed Aetiology":
        continue
    if df.loc[row_index,"Total endogenous or exogenous SBS mutations"] == 0:
        df.loc[row_index,"Exogenous SBS proportion"] = "N/A"
        continue
    df.loc[row_index,"Total endogenous or exogenous SBS mutations"] = row["Total endogenous SBS mutations"] + row["Total exogenous SBS mutations"]
    df.loc[row_index,"Exogenous SBS proportion"] = (row["Total exogenous SBS mutations"])/(df.loc[row_index,"Total endogenous or exogenous SBS mutations"])

df["Cancer Types"].unique()
#while loop finds the total endogenous and exogenous mutation amounts per sample 
loc = 0
c = 4
totalEnd = 0
totalEx = 0
totalun = 0
count = 0
r=2

root = '/Users/rabiram470/Desktop/'
df.to_csv(root + 'endo_exo.csv')

#print(df.iloc[2][2])
#print(len(df))
new = pd.DataFrame()
new['Cancer'] = pd.Series()
new['Total_endogenous_SBS_mutations'] = pd.Series()
new['Total_exogenous_SBS_mutations'] = pd.Series()
new['Total_unknown_SBS_mutations'] = pd.Series()
r = 2
totalend = 0
totalex=0
totalunknown =0
mylist = []

while r < len(df):    
    #bool = new.loc[new['Cancer'].astype(str).str.contains(df.iloc[r][3], case=True)]
    if not df.iloc[r][3] in mylist and not new.empty:
        df2 = {'Cancer': df.iloc[r-1][3], 'Total_endogenous_SBS_mutations': totalend, 'Total_exogenous_SBS_mutations': totalex, 'Total_unknown_SBS_mutations': totalunknown}
        new = new.append(df2, ignore_index = True)
        mylist.append(df.iloc[r][3])
        totalend = 0
        totalex=0
        totalunknown = 0   
    elif new.empty:
        #print("hi")
        #print("empty is: " + str(df.iloc[r][3]))
        df2 = {'Cancer': df.iloc[r][3], 'Total_endogenous_SBS_mutations': totalend, 'Total_exogenous_SBS_mutations': totalex, 'Total_unknown_SBS_mutations': totalunknown}
        new = new.append(df2, ignore_index = True)
        mylist.append(df.iloc[r][3])
        #break
    else:
        #print(df.iloc[r][121])
        totalend = totalend + df.iloc[r][122]   
        #print(df.iloc[r][122])
        totalex = totalex + df.iloc[r][123]
        totalunknown = totalunknown + df.iloc[r][124]
    r+=1
        

root = '/Users/rabiram470/Desktop/'
new.to_csv(root + 'new.csv')     
new = new.iloc[1: , :]
new.plot(x='Cancer', kind='bar', stacked=True)
new.head()

new = pd.DataFrame()
new['Cancer'] = pd.Series()
new['Total_endogenous_SBS_mutations'] = pd.Series()
new['Total_exogenous_SBS_mutations'] = pd.Series()
new['Total_unknown_SBS_mutations'] = pd.Series()
#df = pd.read_csv('/Users/rabiram470/Desktop/PCAWG_master_table.csv')

df['Non_clustering_SV_burden'] = df['non-clustered_del_1-10Kb'] + df['non-clustered_del_10-100Kb'] + df['non-clustered_del_100Kb-1Mb'] + df['non-clustered_del_1Mb-10Mb'] + df['non-clustered_del_>10Mb'] + df['non-clustered_tds_1-10Kb'] + df['non-clustered_tds_10-100Kb'] + df['non-clustered_tds_100Kb-1Mb'] + df['non-clustered_tds_1Mb-10Mb'] + df['non-clustered_tds_>10Mb'] + df['non-clustered_inv_1-10Kb'] + df['non-clustered_inv_10-100Kb'] + df['non-clustered_inv_100Kb-1Mb'] + df['non-clustered_inv_1Mb-10Mb'] + df['non-clustered_inv_>10Mb'] + df['non-clustered_trans']
df['Clustering_SV_burden'] = df['clustered_del_1-10Kb'] + df['clustered_del_10-100Kb'] + df['clustered_del_100Kb-1Mb'] + df['clustered_del_1Mb-10Mb'] + df['clustered_del_>10Mb'] + df['clustered_tds_1-10Kb'] + df['clustered_tds_10-100Kb'] + df['clustered_tds_100Kb-1Mb'] + df['clustered_tds_1Mb-10Mb'] + df['clustered_tds_>10Mb'] + df['clustered_inv_1-10Kb'] + df['clustered_inv_10-100Kb'] + df['clustered_inv_100Kb-1Mb'] + df['clustered_inv_1Mb-10Mb'] + df['clustered_inv_>10Mb'] + df['clustered_trans']

import pandas as pd
file = pd.read_csv('/Users/rabiram470/Desktop/endo_exo.csv')
file['clustering_SV_burden'] = file['clustered_del_1-10Kb'] + file['clustered_del_10-100Kb'] + file['clustered_del_100Kb-1Mb'] + file['clustered_del_1Mb-10Mb'] + file['clustered_del_>10Mb'] + file['clustered_tds_1-10Kb'] + file['clustered_tds_10-100Kb'] + file['clustered_tds_100Kb-1Mb'] + file['clustered_tds_1Mb-10Mb'] + file['clustered_tds_>10Mb'] + file['clustered_inv_1-10Kb'] + file['clustered_inv_10-100Kb'] + file['clustered_inv_100Kb-1Mb'] + file['clustered_inv_1Mb-10Mb'] + file['clustered_inv_>10Mb'] + file['clustered_trans']
file.to_csv('/Users/rabiram470/Desktop/final.csv')

