rm(list=ls())
##########
#librarías
##########
#install.packages("dplyr")
library(dplyr)
##########
#bases
load(url("https://github.com/AlvaroLimber/R_aru/raw/master/data/eh19.RData"))
##########
#.scrape web
##########
install.packages("rvest")
library(help=rvest)
ww<-read_html("https://www.worldometers.info/coronavirus/#countries")
tt<-html_table(ww)
now<-tt[[1]]
head(now)
##########
table(eh19p$depto)
# operador pipe  %>% ctr+mayus+m 
eh19p %>% select(depto) %>% table()

# el promedio de años de educación por departamento y área de 
# las personas de 15 años o más

eh19p %>% filter(s02a_03>=15) %>% 
  group_by(depto,area) %>% summarise(mean(aestudio,na.rm = T))

t1<-eh19p %>% filter(s02a_03>=15) %>% 
  group_by(depto,area,s02a_02) %>% 
  summarise(me=mean(aestudio,na.rm = T),max_ylab=max(ylab,na.rm = T))

eh19p %>% filter(s02a_03>=15) %>% 
  group_by(depto,area,s02a_02) %>% 
  summarise(me=mean(aestudio,na.rm = T),max_ylab=max(ylab,na.rm = T))

#base de datos de jefes de hogar mujeres
sexo<-unique(eh19p$s02a_02)
aux2<-eh19p %>% select(s02a_05) %>% unique()#nota dplyr siempre su salida es dataframe
aux2<-unique(eh19p$s02a_05) # para tenerlo como vector

eh19p %>% filter(s02a_02=="2.Mujer" & s02a_05==aux2[1])
jefe<-eh19p %>% filter(s02a_02==sexo[2] & s02a_05==aux2[1])

#r nativo
# variable que identifique a las personas de 20 años o más
eh19p$p20<-(eh19p$s02a_03>=20)
table(eh19p$p20)
# dplyr
eh19p<-eh19p %>% mutate(pp20=(s02a_03>=20))
# crando una variable de grupos de edad
summary(eh19p$s02a_03)

eh19p %>% mutate(edad5=cut(s02a_03,c(0,60,100)))

eh19p<-eh19p %>% mutate(edad5=cut(s02a_03,seq(0,100,5)))

barplot(table(eh19p$s02a_02,eh19p$edad5),horiz = T)

qq<-quantile(eh19p$yhogpc,seq(0,1,0.2),na.rm = T)
eh19p<-eh19p %>% mutate(yhog_qq=cut(yhogpc,qq))

head(eh19p[,c("yhogpc","yhog_qq")])
table(eh19p$yhog_qq)

# número de nn <=5 años por hogar

bdnn<-eh19p %>% mutate(nn=s02a_03<=5) %>% group_by(folio) %>% summarise(nn=sum(nn))

bd<-merge(bdnn,jefe,by.x="folio",by.y="folio")# merge folio 1:1 keep if _merge==3 using
bd2<-merge(bdnn,jefe,by.x="folio",by.y="folio",all.x = T)

# funciones sobre texto
palabra<-"palabra 68687676564 +++++.....;:.."
texto<-na.omit(eh19p$s06b_11a)

nchar(palabra)
nchar(texto)

tolower(palabra)
toupper(palabra)
tolower(texto)

substr(palabra,1,3)
substr(texto,1,3)

gsub("a","o",palabra)
gsub(" ","",palabra)

gsub("  ","",texto)

install.packages("tm")
library(help=tm)

removeNumbers(palabra)
removePunctuation(palabra)


palabra %>% removeNumbers() %>% removePunctuation()


removeWords(texto,c("EN"))
removeWords(texto,c("EN"))


stopwords("es")

w<-removeWords(tolower(texto),stopwords("es"))
w<-removeWords(tolower(texto),c(stopwords("es"),"mecanico"))
w







