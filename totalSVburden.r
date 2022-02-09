library(ggstatsplot)
library(ggplot2)

totalSVburden <- function(csv){
    #Function is run in R
    #must install ggExtra and ggstatsplot packages
    ggscatterstats( data = csv, x = 'donor_age_at_diagnosis', y = 'total_SV_burden', xlab = 'donor_age_at_diagnosis', ylab = 'total_SV_burden')
    }


nonClustSVburden <- function(csv){
    #Function is run in R
    #must install ggExtra and ggstatsplot packages
    ggscatterstats( data = csv, x = 'donor_age_at_diagnosis', y = 'Non_clustering_SV_burden', xlab = 'donor_age_at_diagnosis', ylab = 'Non_clustering_SV_burden')
    }

nonClustSVburden <- function(csv){
    #Function is run in R
    #must install ggExtra and ggstatsplot packages
    ggscatterstats( data = csv, x = 'donor_age_at_diagnosis', y = 'clustering_SV_burden', xlab = 'donor_age_at_diagnosis', ylab = 'clustering_SV_burden')
    }










