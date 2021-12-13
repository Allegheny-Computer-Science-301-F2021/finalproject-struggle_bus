##### Name(s) :
Hailey, Kyrie, Mariah, Favour

##### Date :
13 December 2021

##### Report Title :
# Differences in Rates of Poverty and Spending based on Gender (across African countries)

For our final project for Data Analytics, we originally had wanted to focus our project on Women and Pregnancy with a dataset that had data based on CDC-collected statistics for live births occurring within the United States to U.S. residents. However, after further research was done on the particular dataset, we soon realized there would not be able to conduct extensive analysis and form relationships among the data points. As a result, we would then have to select a new data set from the list of resources we were given, which also meant we would have to change our research focus.

The title of our new data set is **[Harmonized Male/ Female and Urban/Rural Subnational Expenditure, Poverty, and Inequality Indicators at 2011 PPP $1.90/dat and $3.10/day for Africa South of the Sahara]** (https://www.ifpri.org/publication/harmonized-malefemale-and-urbanrural-subnational-expenditure-poverty-and-inequality), coming from [Harvest Choice] (https://www.ifpri.org/project/harvestchoice). This dataset calculates poverty based on a ” comparison between household per-capita consumption expenditure and the $1.90 and $3.10/day poverty lines expressed in international equivalent purchasing power parity (PPP) dollars (in 2011)”.

With this new data set, we are looking to answer the question of how rates of poverty (poverty headcount ratio, poverty gap, and poverty headcount) and spending (monthly per capita expenditures, food expenditures, and non food expenditures) differ based on gender across different African countries.

## Code Analysis

Before we created our code for our project, we first set up our common libraries. The libraries we utilized for this project were `tidyverse`, `psych`, and `ggplot2`. After doing that, we will select the correct file that contains the proper dataset. Then, we would need to load the data so that is present in our environment for future use. We then viewed the data to make sure that what we loaded was accurate. We then realized we would need to wrangle the data, so we can focus on specific variables in the data that are suitable for our project. We are also filtering out countries that have no data. We decided to focus on the years 2005 and 2012 when we conducted the survey analysis, since there was a good amount of countries with survey data in those years so we could compare as many countries to each other as possible. First, we determined what actual questions we wanted to ask of the data set. Because the data set was about poverty rates and expenditures across African countries, and provided data points that separated expenditures, poverty headcount ratios, and other related points of analysis based on gender. As a result, we create two variables for the 2005 analysis. First, we needed to create a new variable called data2005_Spending with necessary data points for looking at the rates of spending between men and women; we created the variable using the `select()` and `filter()` functions in order to wrangle our data more. The first question we asked concerning the data2005_Spending dataset was **How did monthly food expenditures differ between people of different genders and from different African countries in 2005?** We utilized ggplot to answer this question:

![2005 Monthly Food Expenditures](/writing/2005Rplot.png)

The red points in the plot represent the food expenditures made by those who identify as female and the blue points represent male respondents. As you can see in the graph, most people’s food expenditures in these countries do not exceed $75. Additionally, based on how the points are distributed, we can see that female respondents tend to spend more on food than male respondents. From this plot, we can conclude that women tend to spend more on food expenditures than men do. We believe this could coincide with African culture. In African culture, the role of a woman in a household is to cook the food, clean the house, and take care of the children, if there are any. It makes sense that African women do have the higher percentage when it comes to monthly food expenditures

The next question we looked to answer was **How did monthly non-food expenditures differ between people of different genders and from different African countries in 2005?**, in order to see if there are any differences between how much women and men spend on non-food items. We answered this question by creating a plot using ggplot, a

![2005 Monthly Non-Food Expenditures](/writing/Non-food2005.png)

This plot displays the Monthly Non-Food Expenditures for countries surveyed in 2005. The red points represent non-food expenditures made by those who identify as female and the blue points represent male respondents. As you can see in the graph, most people’s non-food expenditures in these countries did not exceed $125, with the majority of points below the $50 mark. Additionally, based on how the points are distributed, we can see that both male and female tend to spend about the same on monthly non-food expenditures, with Kenya showing that male respondents there tend to spend a little more on non-food expenditures than their female counterparts.


![2012 Monthly Food Expenditures](/writing/2012Rplot.png)


This plot displays the Monthly Food Expenditures for countries surveyed in 2012. The red points represent food expenditures made by those who identify as female and the blue points represent male respondents. As you can see in the graph, most people’s food expenditures in these countries do not exceed around $50-$75. However, the monthly food expenditure in Ghana exceeds $100. So, Ghana’s monthly food expenditure increased from 2005. Additionally, based on how the points are distributed, we can see that female respondents tend to spend more on food than male respondents.


![2012 Monthly Non-Food Expenditures](/writing/RplotNonFood.png)
This plot displays the Monthly Non-Food Expenditures for countries surveyed in 2012. The red points represent non-food expenditures made by those who identify as female and the blue points represent male respondents. As you can see in the graph, most people’s non-food expenditures in these countries did not exceed $100, with the majority of points below the $75 mark. Additionally, based on how the points are distributed, we can see that both male and female tend to spend about the same on monthly non-food expenditures, with Ghana showing that male respondents there tend to spend a little more on non-food expenditures than their female counterparts.

![2005 Poverty Headcount Ratio (%) by country](/writing/2005Headcount.png)
This plot displays the poverty headcount ratio by country for those countries surveyed in 2005. As you can see by the graph, Kenya has a larger range of values from 0-100%. Senegal and Ghana also have points that are dispersed between 25-80%, indicating that that percentage of the population is reported to be living at or below the international poverty line. Overall, we can see that all of these countries deal with varying degrees of poverty, which is indicated by some countries (like Ghana or Kenya) having higher reported cases of poverty than others.

![2012 Poverty Headcount Ratio (%) by country](/writing/2012Headcount.png)

This plot displays the poverty headcount ratio by country for those countries surveyed in 2012. As you can see by the graph, the plots are dispersed between every country except for the Democratic Republic of Congo. The Democratic Republic of Congo has a higher headcount ratio compared to the other countries. Also, there seems to be more men appearing than women, so men were more likely to be below the international poverty line than women are.





For our Multi-Year Analysis, we selected four different countries with survey data spanning several years, in order to see if there were any changes throughout the years to the three variables we have been studying throughout our analysis: monthly food expenditures, monthly non-food expenditures, poverty headcount ratio. Our countries of study were Ethiopia, Malawi, Madagascar, and Senegal and we studied them in a similar way to how we did our previous analysis, which looked at different countries with data in the same survey year.

For our analysis of Ethiopia, we first made a variable called dataEthiopia which we used to refine our dataset using filter() to only include data points representing Ethiopia. We then used ggplot, like our previous analysis, to answer three questions: 
How did monthly food expenditures differ between people of different genders in Ethiopia during the years 2010 and 2012? 
![Ethiopia Multi Year Analysis of Monthly Food Expenditures](/writing/multiyrEthiopia_Food.png)


How did monthly non-food expenditures differ between people of different genders in Ethiopia in 2010 and 2012?
![Ethiopia Multi Year Analysis of Monthly Non-Food Expenditures](/writing/multiyrEthiopia_NFood.png)


How did the poverty headcount ratio differ between people of different genders in Ethiopia in 2000, 2010, 2012?
![Ethiopia Multi Year Analysis of Monthly Food Expenditures](/writing/multiyrEthiopia_headct.png)




Conclusion

Based on the graphs, women spend more money on monthly food expenditures than men do. Additionally, males and females spend the same amount of money on non food expenditures.  Based on the poverty headcount ratio graph, men are more likely to be below the international poverty line than women are. 




(Did you remember to add your name(s) to the top of this document?)
