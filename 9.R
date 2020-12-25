#Matplot
#multivariate - plotting multiple variables in one graph, on the same window
#they've given two datasets, we're comparing the two graphs in a single graph. 

#comparing two speeds of flying, left sfly and mfly together. x axis speed
sfly<-c(26,23,33,6,3,4,20,2)
mfly<-c(4,5,12,9,15,10,8,22)
speed<-c(3,4,4,5,6,7,7,9)
#combining into a matrix. ivert - invertibrate for dataset
ivert<-cbind(sfly,mfly)
#speed
spd<-cbind(speed)
#type - b means both the points and lines are plotted on the graph,
#pch -to change the symbols(triangles and circles on the points), 
#col - color of the lines and points, that also has to be consecutive(consecutive- eg 4:5 type),
#lty - changes the style of the line, like dashes and small dots on the lines.
matplot(spd,ivert,type='b',pch=1:2,col=3:4,lty=2:3,xlab='Speed',ylab='Invertebrate')
legend(x = 'topright',legend =c('Stonefly','MayFly'),col=3:4,pch=1:2,lty=2:3)

