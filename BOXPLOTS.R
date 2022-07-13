require(stringr)
require(ggplot2)
library(gridExtra)
library(readr)

Dados <- read.csv('https://raw.githubusercontent.com/kimleone/Poluicao-Atmosferica/main/Dados(Completo).csv',sep = ';', dec = ',')
Dados <- Dados[,-1]
dados <- Dados


# Horario----------
dados$Data <- str_sub(Dados$Data,12,13) #Considerando somente as horas (ignora o ano)
a1<- ggplot(dados, aes(x = Data, y = dados[,5])) + 
  geom_boxplot(outlier.size = 0.5)+ scale_y_continuous("PM10", limits=c(0, 450))+
  labs(x = "Hours", title = "BH1")+
  scale_x_discrete(breaks=c('00','04','08','12','16','20'))+
  theme_bw()

# Diario----------
dados$Data <- str_sub(Dados$Data,1,2) 
a2 <- ggplot(dados, aes(x = Data, y = dados[,5])) + 
  geom_boxplot(outlier.size = 0.5)+ scale_y_continuous("PM10", limits=c(0, 450))+
  labs(x = "Day", title = "BH1") +   
  scale_x_discrete(breaks=c('01','05','10','15','20','25','30'))+
  theme_bw()

# Mensal----------
dados$Data <- str_sub(Dados$Data,4,5) 
a3 <- ggplot(dados, aes(x = Data, y = dados[,5])) + 
  geom_boxplot(outlier.size = 0.5)+ scale_y_continuous("PM10", limits=c(0, 450))+
  labs(x = "Month", title = "BH1") +   
  scale_x_discrete(breaks=c('01','04','07','10'))+
  theme_bw()

# Anual----------
dados$Data <- str_sub(Dados$Data,7,10) 
a4 <- ggplot(dados, aes(x = Data, y = dados[,5])) + 
  geom_boxplot(outlier.size = 0.5)+ scale_y_continuous("PM10", limits=c(0, 450))+
  labs(x = "Year", title = "BH1")+
  scale_x_discrete(breaks=c('2015','2017','2019'))+
  theme_bw()

grid.arrange(a1,a2,a3,a4,
             ncol = 5)
