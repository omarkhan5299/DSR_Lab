install.packages("gcookbook")
library(gcookbook)
head(cabbage_exp)
count <- table(cabbage_exp$Cultivar)
barplot(cabbage_exp$Weight, col=c("red","blue"), legend=rownames(count),
     ylab="Weight",xlab="Date"   )
cabbage_exp

library(ggplot2)
ggplot(data = cabbage_exp,aes(x=Date,y=Weight, fill= Cultivar))+ geom_bar(stat="identity", position = position_dodge())+
  geom_text(aes(label=Weight),vjust=1.6,color="white", position= position_dodge(0.9), size=3.5)

library(datasets)
head(birthwt)
cabbage_exp
