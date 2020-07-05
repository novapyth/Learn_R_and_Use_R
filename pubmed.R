#This is an example of extraction of Pubmed literature data with help of RISmed package
install.packages("RISmed")
# 
library(RISmed)
#
help(package="RISmed")
#
data(myeloma)
#
ls()
#
str(myeloma)
#
AbstractText(myeloma)
#
Author(myeloma)
#
ArticleTitle(myeloma)
#
Title(myeloma)

PMID(myeloma)

Country(myeloma)
#details for RISmed
#https://cran.r-project.org/web/packages/RISmed/RISmed.pdf

