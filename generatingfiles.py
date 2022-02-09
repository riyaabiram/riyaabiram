import pandas as pd
df = pd.read_csv('./PCAWG_master_table.csv')
MyeloidMDS = pd.DataFrame()
BiliaryAdenoCA = pd.DataFrame()
BoneBenign = pd.DataFrame()
BoneEpith = pd.DataFrame()
BoneOsteosarc = pd.DataFrame()
CNSMedullo = pd.DataFrame()
CNSPiloAstro = pd.DataFrame()
EsoAdenoCA = pd.DataFrame()
HeadSCC = pd.DataFrame()
KidneyRCC = pd.DataFrame()
LiverHCC = pd.DataFrame()
LymphBNHL = pd.DataFrame()
LymphCLL = pd.DataFrame()
MyeloidAML = pd.DataFrame()
MyeloidMPN = pd.DataFrame()
OvaryAdenoCA = pd.DataFrame()
PancAdenoCA = pd.DataFrame()
PancEndocrine = pd.DataFrame()
ProstAdenoCA = pd.DataFrame()
SkinMelanoma = pd.DataFrame()
StomachAdenoCA = pd.DataFrame()
r = 0
while r < len(df):
if df.iloc[r][1] == "Myeloid-MDS":
MyeloidMDS = MyeloidMDS.append(df.iloc[r])
elif df.iloc[r][1] == "Biliary-AdenoCA":
BiliaryAdenoCA = BiliaryAdenoCA.append(df.iloc[r])
elif df.iloc[r][1] == "Bone-Benign":
BoneBenign = BoneBenign.append(df.iloc[r])
elif df.iloc[r][1] == "Bone-Epith":
BoneEpith = BoneEpith.append(df.iloc[r])
elif df.iloc[r][1] == "Bone-Osteosarc":
BoneOsteosarc = BoneOsteosarc.append(df.iloc[r])
elif df.iloc[r][1] == "CNS-Medullo":
CNSMedullo = CNSMedullo.append(df.iloc[r])
elif df.iloc[r][1] == "CNS-PiloAstro":
CNSPiloAstro = CNSPiloAstro.append(df.iloc[r])
elif df.iloc[r][1] == "Eso-AdenoCA":
EsoAdenoCA = EsoAdenoCA.append(df.iloc[r])
elif df.iloc[r][1] == "Head-SCC":
HeadSCC = HeadSCC.append(df.iloc[r])
elif df.iloc[r][1] == "Kidney-RCC":
KidneyRCC = KidneyRCC.append(df.iloc[r])

elif df.iloc[r][1] == "Liver-HCC":
LiverHCC = LiverHCC.append(df.iloc[r])
elif df.iloc[r][1] == "Lymph-BNHL":
LymphBNHL = LymphBNHL.append(df.iloc[r])
elif df.iloc[r][1] == "Lymph-CLL":
LymphCLL = LymphCLL.append(df.iloc[r])
elif df.iloc[r][1] == "Myeloid-AML":
MyeloidAML = MyeloidAML.append(df.iloc[r])
elif df.iloc[r][1] == "Myeloid-MPN":
MyeloidMPN = MyeloidMPN.append(df.iloc[r])
elif df.iloc[r][1] == "Ovary-AdenoCA":
OvaryAdenoCA = OvaryAdenoCA.append(df.iloc[r])
elif df.iloc[r][1] == "Skin-Melanoma":
SkinMelanoma = SkinMelanoma.append(df.iloc[r])
elif df.iloc[r][1] == "Panc-Endocrine":
PancEndocrine = PancEndocrine.append(df.iloc[r])
elif df.iloc[r][1] == "Prost-AdenoCA":
ProstAdenoCA = ProstAdenoCA.append(df.iloc[r])
elif df.iloc[r][1] == "Panc-AdenoCA":
PancAdenoCA = PancAdenoCA.append(df.iloc[r])
else:
StomachAdenoCA = StomachAdenoCA.append(df.iloc[r])
r+=1

root = '/Users/rabiram470/Desktop/'
MyeloidMDS.to_csv(root + 'MyeloidMDS.csv')
BiliaryAdenoCA.to_csv(root + 'BiliaryAdenoCA.csv')
BoneBenign.to_csv(root + 'BoneBenign.csv')
BoneEpith.to_csv(root + 'BoneEpith.csv')
BoneOsteosarc.to_csv(root + 'BoneOsteosarc.csv')
CNSMedullo.to_csv(root + 'CNSMedullo.csv')
CNSPiloAstro.to_csv(root + 'CNSPiloAstro.csv')
EsoAdenoCA.to_csv(root + 'EsoAdenoCA.csv')
HeadSCC.to_csv(root + 'HeadSCC.csv')
KidneyRCC.to_csv(root + 'KidneyRCC.csv')
LiverHCC.to_csv(root + 'LiverHCC.csv')
LymphBNHL.to_csv(root + 'LymphBNHL.csv')
LymphCLL.to_csv(root + 'LymphCLL.csv')
MyeloidAML.to_csv(root + 'MyeloidAML.csv')
MyeloidMPN.to_csv(root + 'MyeloidMPN.csv')
OvaryAdenoCA.to_csv(root + 'OvaryAdenoCA.csv')
PancAdenoCA.to_csv(root + 'PancAdenoCA.csv')
PancEndocrine.to_csv(root + 'PancEndocrine.csv')
ProstAdenoCA.to_csv(root + 'ProstAdenoCA.csv')
SkinMelanoma.to_csv(root + 'SkinMelanoma.csv')
StomachAdenoCA.to_csv(root + 'StomachAdenoCA.csv')
