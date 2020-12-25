#Create a BoxPlot using the dataset cabbage_exp(imported from library Cookbook) with the x-axis as Dates of cabbage and y axis as Weight 
#of cabbage

library(gcookbook)
cabbage_exp
boxplot(Weight ~ Date, data=cabbage_exp,range=0,ylab='Weight of cabbage',xlab='Dates of cabbage')

#OR

# run this first, then if asked run cabbage
library("gcookbook")
str(heightweight)
boxplot(heightIn~ageYear,data = heightweight ,xlab = "AgeYear", ylab = "Height", main = "Boxplot")
