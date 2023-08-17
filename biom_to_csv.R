# Package installation:
BiocManager::install("phyloseq")
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("biomformat")
install.packages("dplyr")
BiocManager::install("microbiome")
BiocManager::install("DESeq2")
BiocManager::install("edgeR")
BiocManager::install("phyloseq")
BiocManager::install("metagMisc")
BiocManager::install("limma")
BiocManager::install("ccrepe")

# Loading library
library(biomformat)
library(patchwork)
library(rbiom)
library(biomformat)
library(dplyr)


# Setting work directory into E drive
# Command used: setwd(workpath (Store as string))
setwd("E:\\Recurrent Neural Network Workflow")

# Setting biom file, store into a variable
mybiomfile <- "E:\\Recurrent Neural Network Workflow\\OTUtable.biom"

# Reading biom file by R library
# Command used: store variable <- read_biom(variable)
biomread <- read_biom(mybiomfile)

# Converting biom file into dataframe
# Command used: Variable name <- as.data.frame(as.matrix(biom_data(FILENAME)))
biomtable <- as.data.frame(as.matrix(biom_data(biomread)))

# Convert the data frame into CSV file
# Command used: write.csv(data frame, New File name (store as string))
write.csv(biomtable,"BIOMtable.csv")
                            
