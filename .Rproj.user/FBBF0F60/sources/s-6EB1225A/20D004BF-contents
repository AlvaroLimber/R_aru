# gráficos
plot(0:10,0:10,type="n")

plot(0,xlim = c(0,10),ylim=c(0,100),type="n",xlab="Eje X",ylab="Eje Y")

plot(0,xlim = c(0,10),ylim=c(0,100),type="n",ann = F)

plot(0,xlim = c(0,100),ylim=c(0,100),type="n",ann = F,axes=F)

points(runif(50,0,100),runif(50,0,100),type = "p")
points(runif(50,0,100),runif(50,0,100),type = "p",col="blue")
points(runif(50,0,100),runif(50,0,100),type = "p",col="blue",cex=5)
points(runif(50,0,100),runif(50,0,100),type = "p",
       col=c("blue","red","#FFC433",rgb(198, 89, 76,200,maxColorValue = 255))
       ,cex=runif(50,0.5,5),pch=c(8,20))
axis(1,seq(0,100,20),letters[1:6])
axis(1,seq(0,100,20))
axis(2)
title(main="Hola",cex.main=3,col.main="darkblue")
title(xlab="1234",ylab="a34u2384")

text(runif(20,0,100),runif(20,0,100),letters[1:20])
text(0,80,"Esta figura ...",pos=4)
locator(1)
text(80.92,88.71,"Aru")
#text(-6.,-22,"Aru")


pdf("fig_1.pdf",width = 11,height = 7)
plot(0,xlim = c(0,100),ylim=c(0,100),type="n",ann = F,axes=F)
axis(1,seq(0,100,20))
axis(2)
points(runif(50,0,100),runif(50,0,100),type = "p",
       col=c("blue","red","#FFC433",rgb(198, 89, 76,200,maxColorValue = 255))
       ,cex=runif(50,0.5,5),pch=c(8,20))
title(main="Hola",cex.main=3,col.main="darkblue")
dev.off()


pdf("fig_2.pdf")
for(i in 1:10){
  print(i)
  plot(0,xlim = c(0,100),ylim=c(0,100),type="n",ann = F,axes=F)
  axis(1,seq(0,100,20))
  axis(2)
  points(runif(50,0,100),runif(50,0,100),type = "p",
         col=c("blue","red","#FFC433",rgb(198, 89, 76,200,maxColorValue = 255))
         ,cex=runif(50,0.5,5),pch=c(8,20))
  title(main="Hola",cex.main=3,col.main="darkblue")
}
dev.off()
getwd()

png("fig_1.png",width = 1000,bg="transparent")
plot(0,xlim = c(0,100),ylim=c(0,100),type="n",ann = F,axes=F)
axis(1,seq(0,100,20))
axis(2)
points(runif(50,0,100),runif(50,0,100),type = "p",
       col=c("blue","red","#FFC433",rgb(198, 89, 76,200,maxColorValue = 255))
       ,cex=runif(50,0.5,5),pch=c(8,20))
title(main="Hola",cex.main=3,col.main="darkblue")
dev.off()

pdf("fig_3.pdf",width = 11,height = 9)
plot(0,xlim = c(0,100),ylim=c(0,100),type="n",ann = F,axes=F)
axis(1,seq(0,100,20))
axis(2)
abline(h=33,v=c(45,60))
abline(h=33,lwd=4)
abline(h=60,lwd=0.5)
abline(h=65,lwd=2,col="red")
abline(h=90,lwd=1.5,col="red",lty=2)
abline(h=5,lwd=1.5,col="red",lty=3)
abline(h=10,lwd=1.5,col="red",lty=4)

#legend(80,80,c("L1","L2","L3"),lwd = c(0.5,1.5,2),lty = c(1,2,3),
    #   col=c("red","black","blue"))

legend("topleft",c("L1","L2","L3"),lwd = c(0.5,1.5,2),lty = c(1,2,3),
       col=c("red","black","blue"),title = "Lineas",horiz = T)
dev.off()
segments()
arrows()
polygon()

# 
x<-rnorm(1000)
y<-rnorm(1000)
g<-rbinom(1000,5,0.4)
bd<-data.frame(x,y,g)

hist(bd$x)
hist(bd$y)
barplot(table(bd$g))

boxplot(bd$x)
boxplot(bd$y ~ bd$g)

plot(density(bd$x))
plot(bd$x,bd$y)
plot(bd)

str(bd)
plot3d

install.packages("rgl")
library(rgl)
open3d()
x <- sort(rnorm(1000))
y <- rnorm(1000)
z <- rnorm(1000) + atan2(x, y)
plot3d(x, y, z, col = rainbow(1000))
# }



