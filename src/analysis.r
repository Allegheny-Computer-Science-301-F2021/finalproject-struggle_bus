### Name:
# Hailey, Mariah, Kyrie, Favour 

# Date: 13 December 2021

# Final project code


rm(list = ls()) # remove variables stored in memory.


#################################################
#### Setup your common libraries
#################################################

# add your libraries here

library(tidyverse)

install.packages("psych")
library(psych)

# add your code here. Be sure to leave your data file(s) in the data/ directory of this repository.

# Selecting the file
myFile  <- file.choose() # pick the csv filename
myData <- read.csv(myFile) # load the data

# View data
View(myData)

# Filtering the data to select certain variables to test
dat <- myData %>% select(country, year, lastYear, MPOV08_PT190, FPOV08_PT190, MPOV08_PT310, FPOV08_PT310, MPOV08_GAP190, FPOV08_GAP190
, MPOV08_GAP310, FPOV08_GAP310, MPOV08_PN190, FPOV08_PN190, MPOV08_PN310, FPOV08_PN310, MPOV08_PCEXP, FPOV08_PCEXP, MPOV08_FOOD, FPOV08_FOOD, MPOV08_NFOOD, FPOV08_NFOOD
, PN08_MAL, PN08_FEM, TPOV08_PT190, TPOV08_PT310, TPOV08_GAP190, TPOV08_GAP310, TPOV08_PN190
, TPOV08_PN310, TPOV08_PCEXP, TPOV08_FOOD, TPOV08_NFOOD, PN08_TOT)

View(dat)

# correlation matrix of data set to find statistically significant relationships

cor.plot(dat, method = c("pearson"))

# (Did you remember to add your name to this script?)
