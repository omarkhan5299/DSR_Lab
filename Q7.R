install.packages("e1071")
library(e1071)
d <- read.csv("C:\\Users\\omar5\\Desktop\\bayes.csv")
str(d)
testset<-data.frame(Age="<=30",Income="Medium",JobSatisfaction="No",Desire="Fair",Enrolls="")
bayesmodel <- naiveBayes(as.factor(Enrolls)~., d)
pred = predict (bayesmodel,testset)
pred
