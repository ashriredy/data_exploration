#### 00 Setting Up the workspace ####
if(!require("dplyr"))     {install.packages("dplyr"     ,dependencies = T)}; library("dplyr")
if(!require("data.table")){install.packages("data.table",dependencies = T)}; library("data.table")
rm(list=ls()); cat("\014"); invisible(gc());
# Expand console to the tallest and widest dimensions possible, as glimpse() adjusts the output to console area 

#### 01 Reading dataset ####
dataset = fread("mtcars.csv")

#### 02 Generate glimpse and write to txt file ####
sink("01_glimpse.txt", type=c("output"))  # Ensures the output is written to 01_glimpse.txt going forward 
dplyr::glimpse(dataset)                   # Generates glimpse file
sink()                                    # Ensures the output is written to console going forward
