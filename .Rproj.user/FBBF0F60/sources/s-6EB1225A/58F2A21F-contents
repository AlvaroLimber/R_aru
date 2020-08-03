rm(list=ls())
##########
#librarías
##########
library(dplyr)
library(foreign)
##########
#bases
load(url("https://github.com/AlvaroLimber/R_aru/raw/master/data/eh19.RData"))
#otra opción
#eh19p<-read.spss("")
##########
# Objetivo mostrar la tabla: área y pobreza moderada por departamento
eh19p$depto

for(i in  1:100){
  print(i)
}

for(i in  seq(0,1,0.01)){
  print(i)
}

for(i in c("hola","como","estan")){
  print(i)
}

xx<-c("hola","como","estan","chau")
for(i in xx){
  print(i)
}

aux<-unique(eh19p$depto)

for(j in aux){
eh19p %>% filter(depto==j) %>% select(p0,area)%>% table() %>% print()
}

for(j in aux){
  t1<-eh19p %>% filter(depto==j) %>% select(p0,area)%>% table()
  nombre<-paste0(j,".csv")
  write.csv(t1,nombre)
  write.csv(t1,paste0(j,".csv"))
}

paste0(2231231231,"sdcsdcdsc",".txt",2)


for(i in 1:10){
  for(j in 20:30){
    for(k in 2:10){
      print(i*j*k)
    }
  }
}

for(i in 1:10){
  if(i<=5){
    print(i)
    print("hola")
  } else {
    print(i*2)
    print("chau")
  }
}

for(i in 1:10){
  if(i<=5){
    print(i)
    print("hola")
  } else if(i >5 & i<9) {
    print(i*2)
    print("chau")
  } else {
    print("nada")
  }
}

for(i in 1:10){
  if(i<=5){
    print(i)
    print("hola")
  } else if(i >5 & i<9) {
    print(i*2)
    print("chau")
    break
  } else {
    print("nada")
  }
}

for(i in 1:10){
  if(i<=5){
    print(i)
    next
    print("hola")
  } else if(i >5 & i<9) {
    print(i*2)
    print("chau")
  } else {
    print("nada")
  }
}

z<-1
k<-1
while(z>0.0001){
  print(k)
  z<-1/k
  k<-k+1
}
dir()
for(i in rep(2,10)){
  print(i)
}
for(i in dir()){
  
}

cond<-(x==6)
if(cond){
  print("hola")
}
if(!cond){
  print("hola")
}
!(1:5>2)

!(6==7 & 5==5)

# Funciones
#f(x)=y

mean(1:10)

fx<-function(x){
  y<-x^2
  return(y)
}
fx(1:10)
plot(fx,xlim=c(-5,5))
curve(fx,xlim=c(-5,5))

gx<-function(x){
  y<-exp(-x^2)
  return(y)
}
plot(gx,xlim=c(-4,4))

tcentral<-function(x){
  m1<-mean(x)
  m2<-median(x)
  m3<-sd(x)
  m4<-max(x)
  m5<-quantile(x,seq(0,1,0.2))
  m6<-sum(x^2)
  mm<-list(media=m1,mediana=m2,sd=m3,max=m4,quintiles=m5,x2=m6)
  return(mm)
}
salida<-tcentral(1:100)

salida$quintiles
salida[[5]]

# Tarea: Hacer una función que dado un vector numérico devuelva la 
# magnitud entre el percetil 99 y el percentil 1. p99/p01

ineq<-function(x){
  p01<-quantile(x,0.01,na.rm = T)
  p99<-quantile(x,0.99,na.rm = T)
  return(as.double(p99/p01))
}

ineq(1:10000)
ineq(eh19p$ylab)

t1<-eh19p %>% filter(s02a_03>=15)%>% 
  group_by(depto,area,s02a_02) %>% summarise(mean(ylab,na.rm=T),ineq(ylab))

# Gráficos de origen de R

cumsum(sort(na.omit(eh19p$ylab)))

cumsum(1:10)

?cumsum(c(4,4,3,2,NA,5))

aux<-eh19p %>% mutate(cumedad=cumsum(s02a_03)) %>% select(s02a_03,cumedad)
head(aux)
tail(aux)


