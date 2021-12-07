### Name:
# Hailey, Mariah, Kyrie, Favour 

# Date: 13 December 2021

# Final project code


rm(list = ls()) # remove variables stored in memory.


# If you want to remove all previous plots and clear the console, run the following two lines.
graphics.off() # clear out all plots from previous work.

cat("\014") # clear the console

# add your libraries here

library(tidyverse)

# If needed, install psych package 
# install.packages("psych")
library(psych)

#Selecting the file
myFile  <- file.choose() # pick the csv filename
myData <- read.csv(myFile) # load the data

view(myData)
# add your code here. Be sure to leave your data file(s) in the data/ directory of this repository.

# TODO


# (Did you remember to add your name to this script?)
