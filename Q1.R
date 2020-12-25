muls <- read.csv("C:\\Users\\omar5\\Desktop\\mulz.csv")
summary(muls)
plot(muls$X1, muls$X1.1,
     col="Red",
     pch = 19,
     main = "1 v 2",
     xlab = "Liner",
     ylab = "Squares")


x <- read.delim("C:\\Users\\omar5\\Desktop\\study.txt", header=T, sep=" ")
is.data.frame(x)
x$t1
str(x)
lez <- 0:19
lez
x$new <- lez
str(x)
x
write.table(x, file = "C:\\Users\\omar5\\Desktop\\studydone.txt",sep="\t",row.names= F)
write.table()