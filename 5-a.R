#Create a dotchart from the Mtcars which is loaded from ggplot2 package.Plot the Y axis by naming the different types of Mtcars against
#MPG values against x-axis. 

#install.packages("ggplot")
library(ggplot2)
head(mtcars)
#dotcharts only store single variable, cex- label size
dotchart(mtcars$mpg,labels=row.names(mtcars),cex=0.7,xlab="MPG",main="Miles Per Gallon of Car")
