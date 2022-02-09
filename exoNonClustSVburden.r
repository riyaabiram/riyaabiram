#endogenous
library(ggplot2)
library(patchwork)
library(gridExtra)


options(repr.plot.width=29, repr.plot.height=19)


p1 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/BiliaryAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), results.subtitle = FALSE) + 
   ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("BiliaryAdenoCA")
p2 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/BoneBenign.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden', results.subtitle = FALSE, warning = FALSE) +
 ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("BoneBenign")+ theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p3 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/BoneOsteosarc.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden', results.subtitle = FALSE, warning = FALSE)+ 
   ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("BoneOsteosarc")+ theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p4 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/BoneEpith.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), results.subtitle = FALSE, warning = FALSE)  +
   ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("BoneEpith") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p5 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/CNSMedullo.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), results.subtitle = FALSE, warning = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("CNSMedullo") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p6 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/CNSPiloAstro.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("CNSPiloAstro")+ theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p7 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/EsoAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("EsoAdenoCA") 
p8 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/HeadSCC.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("HeadSCC") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p9 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/KidneyRCC.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("KidneyRCC") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p10 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/LiverHCC.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("LiverHCC") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p11 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/LymphBNHL.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("LymphBNHL") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p12 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/LymphCLL.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("LymphCLL") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p13 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/MyeloidAML.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("MyeloidAML") 
p14 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/MyeloidMDS.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("MyeloidMDS") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p15 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/MyeloidMPN.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("MyeloidMPN") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p16 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/OvaryAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("OvaryAdenoCA") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p17 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/PancAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("PancAdenoCA") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p18 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/PancEndocrine.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("PancEndocrine") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p19 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/ProstAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("ProstAdenoCA") 
p20 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/SkinMelanoma.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("SkinMelanoma") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p21 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/files/StomachAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("StomachAdenoCA") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())

#marrangeGrob(grobs = p1, p2, p3, p4, nrow=2, ncol=2)
#
#p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21
ggstatsplot::combine_plots(
  plotlist = list(p1, p2, p3, p4,p5, p6,p7,p8,p9, p10, p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21),
  plotgrid.args = list(nrow = 4),
    theme = theme(
      plot.subtitle = element_text(size = 20),
      plot.title = element_text(size = 30)
  )
)

#endogenous
library(ggplot2)
library(patchwork)
library(gridExtra)


options(repr.plot.width=13, repr.plot.height=7)


p1 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/BiliaryAdenoCA.csv'), x = 'Total_exogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Exogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("BiliaryAdenoCA")

p9 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/KidneyRCC.csv'), x = 'Total_exogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Exogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("KidneyRCC") 
p10 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/LiverHCC.csv'), x = 'Total_exogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Exogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("LiverHCC")
p13 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/MyeloidAML.csv'), x = 'Total_exogenous_SBS_mutations', y = 'Non_clustering_SV_burden',  xlab = 'Total Exogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("MyeloidAML")

p16 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/OvaryAdenoCA.csv'), x = 'Total_exogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Exogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("OvaryAdenoCA")
p18 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/PancEndocrine.csv'), x = 'Total_exogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Exogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("PancEndocrine") 
p20 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/SkinMelanoma.csv'), x = 'Total_exogenous_SBS_mutations', y = 'Non_clustering_SV_burden', xlab = 'Total Exogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("SkinMelanoma")

#marrangeGrob(grobs = p1, p2, p3, p4, nrow=2, ncol=2)
#
#p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21
ggstatsplot::combine_plots(
  plotlist = list(p1,p9,p10,p13,p16,p18,p20),
  plotgrid.args = list(nrow = 2),
    theme = theme(
      plot.subtitle = element_text(size = 20),
      plot.title = element_text(size = 30)
  )
)

#endogenous
library(ggplot2)
library(patchwork)
library(gridExtra)


options(repr.plot.width=12, repr.plot.height=25)


p1 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/BiliaryAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), results.subtitle = FALSE) + 
   ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("BiliaryAdenoCA")
p2 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/BoneBenign.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden', results.subtitle = FALSE, warning = FALSE) +
 ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("BoneBenign")+ theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p3 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/BoneOsteosarc.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden', results.subtitle = FALSE, warning = FALSE)+ 
   ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("BoneOsteosarc")+ theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p4 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/BoneEpith.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), results.subtitle = FALSE, warning = FALSE)  +
   ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("BoneEpith")
p5 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/CNSMedullo.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), results.subtitle = FALSE, warning = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("CNSMedullo") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p6 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/CNSPiloAstro.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("CNSPiloAstro") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p7 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/EsoAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("EsoAdenoCA")
p8 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/HeadSCC.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("HeadSCC") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p9 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/KidneyRCC.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("KidneyRCC") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p10 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/LiverHCC.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("LiverHCC")
p11 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/LymphBNHL.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("LymphBNHL") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p12 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/LymphCLL.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("LymphCLL") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p13 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/MyeloidAML.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("MyeloidAML")
p14 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/MyeloidMDS.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("MyeloidMDS") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p15 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/MyeloidMPN.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("MyeloidMPN") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p16 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/OvaryAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("OvaryAdenoCA")
p17 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/PancAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("PancAdenoCA") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p18 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/PancEndocrine.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("PancEndocrine") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p19 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/ProstAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("ProstAdenoCA")
p20 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/SkinMelanoma.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("SkinMelanoma") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p21 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/StomachAdenoCA.csv'), x = 'Total_endogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Endogenous mutations', ylab = paste('Non-clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("StomachAdenoCA") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())

#marrangeGrob(grobs = p1, p2, p3, p4, nrow=2, ncol=2)
#
#p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21
ggstatsplot::combine_plots(
  plotlist = list(p1, p2, p3, p4,p5, p6,p7,p8,p9, p10, p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21),
  plotgrid.args = list(nrow = 7),
    theme = theme(
      plot.subtitle = element_text(size = 20),
      plot.title = element_text(size = 30)
  )
)

#endogenous
library(ggplot2)
library(patchwork)
library(gridExtra)


options(repr.plot.width=14, repr.plot.height=7)


p1 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/BiliaryAdenoCA.csv'), x = 'Total_exogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Exogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("BiliaryAdenoCA")
p9 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/KidneyRCC.csv'), x = 'Total_exogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Exogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("KidneyRCC")  + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p10 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/LiverHCC.csv'), x = 'Total_exogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Exogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("LiverHCC") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p13 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/MyeloidAML.csv'), x = 'Total_exogenous_SBS_mutations', y = 'clustering_SV_burden',  xlab = 'Total Exogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("MyeloidAML") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p16 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/OvaryAdenoCA.csv'), x = 'Total_exogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Exogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("OvaryAdenoCA")
p18 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/PancEndocrine.csv'), x = 'Total_exogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Exogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("PancEndocrine") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())
p20 <- ggstatsplot::ggscatterstats( data = read.csv('/Users/rabiram470/Desktop/file/SkinMelanoma.csv'), x = 'Total_exogenous_SBS_mutations', y = 'clustering_SV_burden', xlab = 'Total Exogenous mutations', ylab = paste('Clustered', 'SV burden', sep ='\n'), options(repr.plot.width=100, repr.plot.height=50), results.subtitle = FALSE) + ggpubr::stat_cor(rr.label = TRUE, p.label = TRUE) + ggtitle("SkinMelanoma") + theme(axis.title.x=element_blank()) + theme(axis.title.y=element_blank())


ggstatsplot::combine_plots(
  plotlist = list(p1,p9,p10,p13,p16,p18,p20),
  plotgrid.args = list(nrow = 2),
    theme = theme(
      plot.subtitle = element_text(size = 20),
      plot.title = element_text(size = 30)
  )
)

