#ggplot is for plotting graphs and for visualization
install.packages("ggplot")
library(gcookbook)
library(ggplot2)
cabbage_exp #dataset
#ggplot is the main plot aes= aesthetics, then put the x axis as date y axis as weight, fill is 
# If you want the heights of the bars to represent values in the data, use stat="identity" and map a value to the y aesthetic.
#geom_bar is for the bar graph. stat is if we want the values of height to be represented from our dataset to- if we don't put it, it means we haven't put a value for y ourselves.
#positions = dodge is because we don't want our values(red and blue thing) to overlap each other.
#geom_text is to label weights inside the bar
#vjust= vertical justification where to put the weight, from each bargraph from the top
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) + geom_bar(stat="identity", position = "dodge") + geom_text(aes(label=Weight),
vjust=1.5, colour="white", position = position_dodge(.9), size =3)
