### Name:
# Hailey, Mariah, Kyrie, Favour 

# Date: 13 December 2021

# Final project code


rm(list = ls()) # remove variables stored in memory.


<<<<<<< HEAD
# If you want to remove all previous plots and clear the console, run the following two lines.
graphics.off() # clear out all plots from previous work.

cat("\014") # clear the console
=======
#################################################
#### Setup your common libraries
#################################################
>>>>>>> 08a68e3efc8db27298b47cc5d755ce7de5bf2a7d

# add your libraries here

library(tidyverse)
<<<<<<< HEAD

# If needed, install psych package 
# install.packages("psych")
=======
#install.packages("psych")
>>>>>>> 08a68e3efc8db27298b47cc5d755ce7de5bf2a7d
library(psych)
library(ggplot2)

#Selecting the file
myFile  <- file.choose() # pick the csv filename
myData <- read.csv(myFile) # load the data

view(myData)
# add your code here. Be sure to leave your data file(s) in the data/ directory of this repository.

# Selecting the file
myFile  <- file.choose() # pick the csv filename
myData <- read.csv(myFile) # load the data

# View data
View(myData)

# Filtering the data to select certain variables to test using select()
# also filtering out countries that have no data using filter()
dat <- myData %>% select(country, year, MPOV08_PT190, FPOV08_PT190, MPOV08_PT310, FPOV08_PT310, MPOV08_GAP190, FPOV08_GAP190
, MPOV08_GAP310, FPOV08_GAP310, MPOV08_PN190, FPOV08_PN190, MPOV08_PN310, FPOV08_PN310, MPOV08_PCEXP, FPOV08_PCEXP, MPOV08_FOOD, FPOV08_FOOD, MPOV08_NFOOD, FPOV08_NFOOD
, PN08_MAL, PN08_FEM, TPOV08_PT190, TPOV08_PT310, TPOV08_GAP190, TPOV08_GAP310, TPOV08_PN190
, TPOV08_PN310, TPOV08_PCEXP, TPOV08_FOOD, TPOV08_NFOOD, PN08_TOT) %>% filter(MPOV08_PT190 > 0)

View(dat)

# correlation matrix of data set to find statistically significant relationships
#pairs.panels(dat)

#################################################
#### 2005 Survey Year Analysis
#################################################

# creating new variable with necessary data points for analysis
data2005 <- dat %>% select(country, year, MPOV08_FOOD, FPOV08_FOOD, MPOV08_NFOOD, FPOV08_NFOOD) %>% filter(year == 2005)

# looking at correlation
pairs.panels(data2005)

View(data2005)

# How did monthly food expenditures differ between people of different genders and from different African countries in 2005?
ggplot(data = data2005) + geom_point(mapping = aes(x = country, y = MPOV08_FOOD), color = "blue") +
  geom_point(mapping=aes(x=country, y = FPOV08_FOOD), color = "red") + 
  labs(subtitle = "2005",
       y = "Monthly Food Expenditure in 2011 PPP$", 
       x = "Country", title = "Monthly Food Expenditures")

# How did monthly nonfood expenditures differ between people of different genders and from different African countries in 2005?
ggplot(data = data2005) + geom_point(mapping = aes(x = country, y = MPOV08_NFOOD), color = "blue") +
  geom_point(mapping=aes(x=country, y = FPOV08_NFOOD), color = "red") + 
  labs(subtitle = "2005",
       y = "Monthly Non-Food Expenditure in 2011 PPP$", 
       x = "Country", title = "Monthly Non-Food Expenditures")

#################################################
#### 2012 Survey Year Analysis
#################################################

# creating new variable with necessary data points for analysis
data2012 <- dat %>% select(country, year, MPOV08_FOOD, FPOV08_FOOD, MPOV08_NFOOD, FPOV08_NFOOD) %>% filter(year == 2012)

# How did monthly food expenditures differ between people of different genders and from different African countries in 2012?
ggplot(data = data2012) + geom_point(mapping = aes(x = country, y = MPOV08_FOOD), color = "blue") +
  geom_point(mapping=aes(x=country, y = FPOV08_FOOD), color = "red") + 
  labs(subtitle = "2012",
       y = "Monthly Food Expenditure in 2011 PPP$", 
       x = "Country", title = "Monthly Food Expenditures")

# How did monthly non-food expenditures differ between people of different genders and from different African countries in 2012?
ggplot(data = data2012) + geom_point(mapping = aes(x = country, y = MPOV08_NFOOD), color = "blue") +
  geom_point(mapping=aes(x=country, y = FPOV08_NFOOD), color = "red") + 
  labs(subtitle = "2012",
       y = "Monthly Non-Food Expenditure in 2011 PPP$", 
       x = "Country", title = "Monthly Non-Food Expenditures")


# (Did you remember to add your name to this script?)
