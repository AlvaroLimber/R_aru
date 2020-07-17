### Arrays
a<-array(1:1000,c(10,10,10))
a[ , , 1]
# Heterogéneos
## Data frame. filas:Observaciones, columnas: Variables 
### Importación
library(foreign)
setwd("C:\\Users\\ALVARO\\Downloads\\Base EH2019")
dir()
eh19p<-read.spss("EH2019_Persona.sav",use.value.labels = F,to.data.frame = T)
eh19p<-read.spss("EH2019_Persona.sav",to.data.frame = T)
eh19v<-read.spss("EH2019_Vivienda.sav",to.data.frame = T)
#install.packages("haven") 
#library(help=haven)
object.size(eh19p)/10^6
object.size(eh19v)/10^6

names(eh19p) # nombres
dim(eh19p) # 
str(eh19p) #estructura
aux<-attributes(eh19p) # atributos

eh19p[,426]
eh19p[,"ylab"]
eh19p$ylab
eh19p[[426]]

eh19p[ ,c("ylab","area")]
eh19p[1:10,c("ylab","area")]

unique(eh19p$s02a_02)
jj<-unique(eh19p[,10])

bd1<-eh19p[eh19p$s02a_02=="2.Mujer" ,c("ylab","area")]
bd2<-eh19p[eh19p$s02a_02=="2.Mujer" & eh19p[,10]==jj[1] ,c("ylab","area")]

# exportación
write.dta(bd1,"bd1.dta")
write.dta(eh19p,"eh19p.dta")
write_dta(eh19p,"eh19p.dta")

save(bd1,a,eh19p,eh19v,file="eh19.RData")
#limpiar la sesión
rm(aux)
ls()
rm(list=ls())

load("eh19.RData")
save(eh19p,eh19v,file="eh19.RData")

t1<-table(eh19p$p0)
t2<-table(eh19p$depto,eh19p$p0)
t3<-table(eh19p$depto,eh19p$p0,eh19p$area)

prop.table(t1)*100
t1<-round(prop.table(t1)*100,2)
barplot(t1)

t2<-round(prop.table(t2,2)*100,2)
barplot(t(t2))

t2<-addmargins(t2,1)
rownames(t2)[10]<-"Total"
t2

install.packages("xtable")
library(xtable)
xtable(t2,caption = "Pobreza moderada por departamento, 2019")

mean(eh19p$ylab, na.rm = T )

median(eh19p$ylab, na.rm = T )
sd(eh19p$ylab, na.rm = T )
var(eh19p$ylab, na.rm = T )
summary(eh19p$ylab)
summary(eh19p[,c("ylab","p0","ynolab")])
quantile(eh19p$ylab,c(0.73),na.rm = T)
quantile(eh19p$ylab,seq(0,1,0.01) ,na.rm = T)
mean(na.omit(eh19p$ylab))
#x<-1:10
#length(x)
mcuadratica<-function(x){
  x<-na.omit(x)
  N<-length(x)
  y<-sqrt(sum(x^2)/N)
  return(y)
}

mcuadratica(eh19p$ylab)

install.packages("dplyr")
library(dplyr)

## Listas, 

