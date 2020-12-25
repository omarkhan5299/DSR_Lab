#cluster needed to create clusters for k means clustering 
library(cluster)
library(ggplot2)
#makes it simple to split data apart, perform operations, and put it back together.
library(plyr)
#data visualization system
library(lattice)
#for graphical representation
library(graphics)
#two vectors x and y
x<-c(185,170,168,179,182,188)
y<-c(72,56,60,68,72,77)
#clsample is a daframe of x and y
clsample<-data.frame(x,y)
clsample
#for showing dimensions
dim(clsample)
#in k means clustering, data has to be in the form of a matrix, convert to matrix
clsample1<-data.matrix(clsample)
clsample1
#taking the first and second column and putting it into cldata
cldata<-clsample[,1:2]
cldata
class(cldata)
km=kmeans(cldata,2,nstart=10)#2=no of clusters, n=how many times the process will be repeated repeat the process
km
km$cluster#centroid of each cluster
#matrix of cluster centers
km$centers
#within sum of square, squares the distance. sum of squares of distance between the centroids
km$withinss
#between clusters sum of squares
km$betweenss
#total sum of squares
km$totss
#Visualizing clusters
#xlim min and max vals(range on the axis) of cldata first column - in the data, 60 and 170 are the minumums. same for x and y axis. row,col and row,col
plot(cldata[km$cluster==1,],col="red",xlim=c(min(cldata[,1]),max(cldata[,1])),ylim=c(min(cldata[,2]),max(cldata[,2])))
points(cldata[km$cluster==2,],col="blue")
#points(cldata[km$cluster==3,],col="green")