library(rbiom)
library(biomformat)

BiocManager::install("phyloseq")
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("biomformat")

install.packages("dplyr")

library(rbiom)
library(biomformat)
library(dplyr)


setwd("E:\\Recurrent Neural Network Workflow")
mybiomfile <- "E:\\Recurrent Neural Network Workflow\\OTUtable.biom"
biomread <- read_biom(mybiomfile)
biomtable <- as.data.frame(as.matrix(biom_data(biomread)))

write.csv(biomtable,"BIOMtable.csv")
                            
