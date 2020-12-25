install.packages("rpart.plot")
install.packages("rpart")
library(rpart.plot)
library(rpart)
play=c('yes','no','yes','no','yes','yes','yes','yes','yes','no')
outlook=c('rainy','rainy','overcast','sunny','rainy','sunny','rainy','sunny','overcast','sunny')
Temperature=c('cool','cool','hot','mild','cool','cool','cool','hot','mild','mild')
Humidity=c('normal','normal','high','high','normal','normal','normal','normal','high','high')
wind=c('FALSE','TRUE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','TRUE','TRUE')

df <- iris
f <- rpart(Species ~ Petal.Length+Petal.Width+Sepal.Length+Sepal.Width, method = "class",
           data = df, control = rpart.control(minsplit=1),parms = list(split="information")) 
head(df)  
play_decision <- cbind(play,outlook,Temperature,Humidity,wind)
play_decision <- as.data.frame(play_decision)
str(play_decision)

fit <- rpart(play ~ outlook+Temperature+Humidity+wind, method="class", data=play_decision,
              control=rpart.control(minsplit = 1), parms = list(split='information'))
fit
rpart.plot(fit,type =4, extra =2, clip.right.labs=F,varlen = 0,faclen=0)

