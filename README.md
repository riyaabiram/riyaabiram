Investigating the Causes of Structural Alterations in Human Cancer

Structural variants (SV’s), or mutations in the genome 50 bp or larger, play significant roles in the emergence of various cancer types. SV’s are typically characterized by their 
type (i.e duplications, deletions, inversions, translocations,), their size in base pairs, and whether or not they are clustered in genomic space.  The total number of SV’s in a  
given genome is referred to as the SV burden and is often considered a metric of genome instability. The endogenous processes or exogenous agents which give rise to SV’s are 
largely unknown.  In this project, we will employ statistical modeling techniques to explain the variation of these mutations in the genome by using two metrics that measure the 
amount of large-scale genomic alterations  in tumors  (SV burden and percent aberrant genome, a measure of what percent of genes have been copied or deleted). We will conduct a 
systematic analysis to quantify the role of numerous endogenous and exogenous factors including, but not limited to, tobacco smoking, ultraviolet light and failure of DNA repair 
pathways. Elucidating the causes of SV’s,  which are known to be key drivers of tumorigenesis, will help inform cancer prevention strategies.

Linear regression statistical models will be used to analyze the data, comparing results using correlation coefficients to determine whether a factor is a likely cause of 
structural variants. The attribution of each mutational signature will be the independent variable that is tested. These attributions indicate the exogenous and endogenous 
processes active in the cell.  The metrics mentioned above (percent aberrant genome and SV burden) would be the dependent variable. Variables that would be corrected for include 
age, gender, cancer type, and TP53 mutation status, all which would be included in the model. 

The code involved in this project will largely have to be run in R, due to the limited plots produced with just Python. Some of the code necessary to generate CSV files used to 
produce plots will require Python, but which program is necessary should be detailed in the code itself. 

In order to use the specified functions, data must be in either CSV or TSV format and must have data matching the factors being tested. Once the appropriate factors are inputted 
and the code is run, a regression plot with statistical details should be available. 




