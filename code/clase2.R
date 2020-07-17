###########################
#Comentarios en R
# Autor:
# Objetivo: 
# Fecha: 
###########################
2+2 # es una suma
4*9
8/90
#comandos de R comando(argumentos del comando)
# comando(arg1,arg2,arg3,...)
# comando()
# comandos simples
exp(x=10)
exp(10)
#help en R
?exp
sqrt(40)
log(1)
ls() # lista los objetos en memoria

# directorios de trabajo
getwd() # directorio actual

setwd("C:\\Users\\ALVARO\\Documents/GitHub/R_aru/capacitacion/data") # cambiar el directorio de trabajo

##############asignación
dirdata<-"C:\\Users\\ALVARO\\Documents/GitHub/R_aru/capacitacion/data"
dirtex="C:\\Users\\ALVARO\\Documents/GitHub/R_aru/capacitacion/tex"
"C:\\Users\\ALVARO\\Documents/GitHub/R_aru/capacitacion/fig"->dirfig

setwd(dirtex)
# tipos de estructura
## Homogéneas 
### scalares
x1<-2  # numérica
x2<-"hola" # texto
x3<-(5>x1)  # valores lógicos (T,F)
x4<-NA # Valores perdido
x5<-NULL # Objeto nulo
class(x1);class(x2);class(x3);class(x4);class(x5)
### Vectores (columna)
y1=c(2,4,8,1)
y2=c("hola","como","estan")
y3=t(y1)
y4=(y1<(-3))
y5=1:200
y6<-200:1
x6<-sum(1:1000)
y7<-seq(0,1,0.01)
y8<-seq(by=0.01,from=2,to=4)
y9<-rep(1,100)
y10<-rep(y5,2)
#### vectores aleatorios
va1<-runif(100,10,20)
va2<-rnorm(100,5,2)
### Matrices
m1<-matrix(1:20,4,5)
m2<-matrix(c(2,2,2,4,4,4,7,7,7),3,3)
m3<-matrix(c(2,2,2,4,4,4,7,7,7),3,3,byrow = T)
m4<-matrix(c(1,2,3,"a"),2,2)
matrix(NA,5,5)
matrix(NULL,5,5)
m5<-NULL
m5<-matrix(NA,5,5)
t(m1) # transpuesta
m1-m1
m2+m2
m1 * m1 # elemento a elemento
m6<-m1 %*% t(m1) # multiplicación de matrices
det(m6)
solve(m6) # invertir matrices

cbind(m1,10:13)
cbind(10:13,m1)
cbind(m1,m1)

rbind(m1,1:5)
rbind(m1,m1)
aux<-dim(m1)

### indexación
m1[2,2]
m1[2,]
m1[,4]
m1[c(2,3),c(2,3)]
m1[2:3,2:3]
m1[c(1,3),c(3,5)]
m1[,-3]
m1[-1,-3]
m1[,-c(1,3)]
m1[,5:1]
m1[,c(5,4,3,2,1)]
d<-diag(m1)
diag(d,4,4)
diag(1,5,5)

m1[,(m1[1,]>5)]
m1[(m1[,2]>6),]

# buscar los operadores lógicos en R 


## Heterogéneas




