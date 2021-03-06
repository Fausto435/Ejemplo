#Taller 7
#Medidas de tendencia central
#fecha:13/07/20
#Fuente de datos Banco mundial

setwd("C:/Users/Fausto/Desktop/Estadistica Descriptiva/Tallares R")


rm(list = ls())

#Art�culos en publicaciones cient�ficas y t�cnicas

pais <- c("Afganist�n","Angola","Albania","Andorra","Emiratos �rabes Unidos","Argentina","Armenia","Antigua y Barbuda","Australia",
          "Austria","Azerbaiy�n","Burundi","B�lgica","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrein","Bahamas","Bosnia y Herzegovina",
          "Belar�s","Belice","Bolivia","Brasil","Barbados","Brunei Darussalam","Bhut�n","Botswana","Rep�blica Centroafricana","Canad�","Suiza",
          "Chile","China","C�te d'Ivoire","Camer�n","Congo, Rep�blica Democr�tica del","Congo, Rep�blica del","Colombia","Comoras","Cabo Verde",
          "Costa Rica","Cuba","Chipre","Rep�blica Checa","Alemania","Djibouti","Dominica","Dinamarca","Rep�blica Dominicana","Argelia","Ecuador",
          "Egipto, Rep�blica �rabe de","Eritrea","Espa�a","Estonia","Etiop�a","Finlandia","Fiji","Francia","Micronesia (Estados Federados de)",
          "Gab�n","Reino Unido","Georgia","Ghana","Guinea","Gambia","Guinea-Bissau","Guinea Ecuatorial","Grecia","Granada","Groenlandia","Guatemala",
          "Guyana","Honduras","Croacia","Hait�","Hungr�a","Indonesia","India","Irlanda","Ir�n, Rep�blica Isl�mica del","Iraq","Islandia","Israel",
          "Italia","Jamaica","Jordania","Jap�n","Kazajst�n","Kenya","Kirguist�n","Camboya","Kiribati","Saint Kitts y Nevis","Corea, Rep�blica de",
          "Kuwait","Rep�blica Democr�tica Popular Lao","L�bano","Liberia","Libia","Santa Luc�a","Liechtenstein","Sri Lanka","Lesotho","Lituania",
          "Luxemburgo","Letonia","Marruecos","M�naco","Rep�blica de Moldova","Madagascar","Maldivas","M�xico","Islas Marshall","Macedonia del Norte",
          "Mal�","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauricio","Malawi","Malasia","Namibia","N�ger","Nigeria",
          "Nicaragua","Pa�ses Bajos","Noruega","Nepal","Nauru","Nueva Zelandia","Om�n","Pakist�n","Panam�","Per�","Filipinas","Palau",
          "Papua Nueva Guinea","Polonia","Puerto Rico","Corea, Rep�blica Popular Democr�tica de","Portugal","Paraguay","Ribera Occidental y Gaza",
          "Qatar","Rumania","Federaci�n de Rusia","Rwanda","Arabia Saudita","Sud�n","Senegal","Singapur","Islas Salom�n","Sierra Leona","El Salvador",
          "San Marino","Somalia","Serbia","Sud�n del Sur","Santo Tom� y Pr�ncipe","Suriname","Rep�blica Eslovaca","Eslovenia","Suecia","Eswatini",
          "Seychelles","Rep�blica �rabe Siria","Chad","Togo","Tailandia","Tayikist�n","Turkmenist�n","Timor-Leste","Tonga","Trinidad y Tobago",
          "T�nez","Turqu�a","Tuvalu","Tanzan�a","Uganda","Ucrania","Uruguay","Estados Unidos","Uzbekist�n","San Vicente y las Granadinas","Venezuela",
          "Viet Nam","Vanuatu","Samoa","Kosovo","Yemen, Rep. del","Sud�frica","Zambia","Zimbabwe")




grupos_paises <- c("Ingreso bajo","Ingreso mediano bajo","Ingreso mediano alto","Ingreso alto","Ingreso alto","Ingreso mediano alto","Ingreso mediano alto",
                   "Ingreso alto","Ingreso alto","Ingreso alto","Ingreso mediano alto","Ingreso bajo","Ingreso alto","Ingreso mediano bajo","Ingreso bajo",
                   "Ingreso mediano bajo","Ingreso mediano alto","Ingreso alto","Ingreso alto","Ingreso mediano alto","Ingreso mediano alto","Ingreso mediano alto",
                   "Ingreso mediano bajo","Ingreso mediano alto","Ingreso alto","Ingreso alto","Ingreso mediano bajo","Ingreso mediano alto","Ingreso bajo",
                   "Ingreso alto","Ingreso alto","Ingreso alto","Ingreso mediano alto","Ingreso mediano bajo","Ingreso mediano bajo","Ingreso bajo",
                   "Ingreso mediano bajo","Ingreso mediano alto","Ingreso mediano bajo","Ingreso mediano bajo","Ingreso mediano alto","Ingreso mediano alto",
                   "Ingreso alto","Ingreso alto","Ingreso alto","Ingreso mediano bajo","Ingreso mediano alto","Ingreso alto","Ingreso mediano alto",
                   "Ingreso mediano bajo","Ingreso mediano alto","Ingreso mediano bajo","Ingreso bajo","Ingreso alto","Ingreso alto","Ingreso bajo","Ingreso alto",
                   "Ingreso mediano alto","Ingreso alto","Ingreso mediano bajo","Ingreso mediano alto","Ingreso alto","Ingreso mediano alto","Ingreso mediano bajo",
                   "Ingreso bajo","Ingreso bajo","Ingreso bajo","Ingreso mediano alto","Ingreso alto","Ingreso mediano alto","Ingreso alto","Ingreso mediano alto",
                   "Ingreso mediano alto","Ingreso mediano bajo","Ingreso alto","Ingreso bajo","Ingreso alto","Ingreso mediano alto","Ingreso mediano bajo",
                   "Ingreso alto","Ingreso mediano alto","Ingreso mediano alto","Ingreso alto","Ingreso alto","Ingreso alto","Ingreso mediano alto",
                   "Ingreso mediano alto","Ingreso alto","Ingreso mediano alto","Ingreso mediano bajo","Ingreso mediano bajo","Ingreso mediano bajo",
                   "Ingreso mediano bajo","Ingreso alto","Ingreso alto","Ingreso alto","Ingreso mediano bajo","Ingreso mediano alto","Ingreso bajo",
                   "Ingreso mediano alto","Ingreso mediano alto","Ingreso alto","Ingreso mediano bajo","Ingreso mediano bajo","Ingreso alto","Ingreso alto",
                   "Ingreso alto","Ingreso mediano bajo","Ingreso alto","Ingreso mediano bajo","Ingreso bajo","Ingreso mediano alto","Ingreso mediano alto",
                   "Ingreso mediano alto","Ingreso mediano alto","Ingreso bajo","Ingreso alto","Ingreso mediano bajo","Ingreso mediano alto","Ingreso mediano bajo",
                   "Ingreso bajo","Ingreso mediano bajo","Ingreso alto","Ingreso bajo","Ingreso mediano alto","Ingreso mediano alto","Ingreso bajo",
                   "Ingreso mediano bajo","Ingreso mediano bajo","Ingreso alto","Ingreso alto","Ingreso mediano bajo","Ingreso alto","Ingreso alto",
                   "Ingreso alto","Ingreso mediano bajo","Ingreso alto","Ingreso mediano alto","Ingreso mediano bajo","Ingreso alto","Ingreso mediano bajo",
                   "Ingreso alto","Ingreso alto","Ingreso bajo","Ingreso alto","Ingreso mediano alto","Ingreso mediano bajo","Ingreso alto","Ingreso alto",
                   "Ingreso mediano alto","Ingreso bajo","Ingreso alto","Ingreso bajo","Ingreso mediano bajo","Ingreso alto","Ingreso mediano bajo",
                   "Ingreso bajo","Ingreso mediano bajo","Ingreso alto","Ingreso bajo","Ingreso mediano alto","Ingreso bajo","Ingreso mediano bajo",
                   "Ingreso mediano alto","Ingreso alto","Ingreso alto","Ingreso alto","Ingreso mediano bajo","Ingreso alto","Ingreso bajo","Ingreso bajo",
                   "Ingreso bajo","Ingreso mediano alto","Ingreso bajo","Ingreso mediano alto","Ingreso mediano bajo","Ingreso mediano alto","Ingreso alto",
                   "Ingreso mediano bajo","Ingreso mediano alto","Ingreso mediano alto","Ingreso mediano bajo","Ingreso bajo","Ingreso mediano bajo",
                   "Ingreso alto","Ingreso alto","Ingreso mediano bajo","Ingreso mediano alto","Ingreso mediano alto","Ingreso mediano bajo","Ingreso mediano bajo",
                   "Ingreso mediano alto","Ingreso mediano alto","Ingreso bajo","Ingreso mediano alto","Ingreso mediano bajo","Ingreso mediano bajo")



articulos <- c(111.72,30.12,180.36,3.6,3144.89,8811.13,521.33,5.63,53610.22,12362.28,761.43,21.12,15688.13,227.74,251.99,3135.08,3311.27,321.51,19.77,
               703.79,1179.81,9.11,102.8,60147.96,37.97,293.91,52.64,280.57,20.47,59967.79,21378.56,7121.74,528263.25,248.14,875.62,148.72,66.68,7195.02,
               3.28,8.69,507.41,968.74,1245.42,15576.6,104396.12,6.16,12.6,13978.8,49.26,5231.44,2142.19,13326.67,21.37,54536.59,1414.72,1994.44,10598.94,
               139.78,66352.18,4.37,63.78,97680.9,550.41,1275.99,27.84,33.83,15.01,2.6,10906.99,46.17,30,99.89,13.7,45.1,4276.9,29.18,6700.92,26947.57,
               135787.79,7174.11,48305.64,6073.39,680.89,12234.69,71240.28,163.85,2627.29,98792.5,2367.46,1246.76,137.06,145.74,0.62,25.53,66376.17,
               1003.84,86.91,1776.31,25.39,161.9,3.81,30.4,1347.54,18.54,2267.3,869.1,1417.73,5056.77,45.12,210.37,127.41,7.44,16345.64,2.31,493.05,
               90.37,422.02,230.65,249.51,140.85,139.25,20.32,126.94,231.21,23661.33,156.31,55.18,5602.28,43.67,30457.33,11802.78,792.11,0,7888.75,856.43,
               12904.31,172.88,1629.88,2237.34,6.51,64.12,35662.64,515.42,87.42,14294.56,97.98,375.95,1502.58,10345.01,81579.36,169.52,10897.88,397.77,
               388.32,11458.63,13.2,40.72,45.44,10.81,9.74,4523.42,9.08,0.73,17.38,5321.6,3206.15,20420.56,34.05,9.53,274.65,15.45,86.06,12513.75,62.4,
               3.69,13.92,4.82,211.21,5564.86,33535.8,1.48,602.71,673.07,10379.89,852.23,422807.71,353.91,1.22,639.03,4286.48,6.45,11.05,278.43,137.44,
               13008.74,213.07,359.33)



n.articulos <- data.frame(pais,grupos_paises,articulos)
library(summarytools)
summarytools::freq(n.articulos$grupos_paises)
#media o promedio
media <- mean(n.articulos$articulos)
media
#mediana
mediana <- median(n.articulos$articulos)
mediana
#moda
v1 <- c(1,1,1,1,2,3,4)
library(modeest)
moda <- mfv(v1)
moda
moda2 <- mfv(n.articulos$articulos)
moda2
v2 <- c(1:20,rep(NA,10))
v2
mean(v2)
mean(v2,na.rm = T)
library(magrittr)
library(dplyr)
#operaciones pipe
names(n.articulos)
n.articulos %>%names()
#cuantos arituculos publicaron Ecuador, Colombia y Peru en 2018
paises.vecinos <- subset(n.articulos,n.articulos$pais=="Ecuador"| 
                           n.articulos$pais=="Colombia"| 
                           n.articulos$pais=="Per�")
paises.vecinos2 <-subset(n.articulos,n.articulos$pais%in%c("Ecuador","Colombia","Per�"))
paises.vecinos2
paises.vecinos
#Que paises publicaron menos o igual a 1000 articulos en 2018
peores <- subset(n.articulos,n.articulos$articulos<=1000)

# �Cu�ntos observaciones hubo en 2018 en cada grupo de pa�ses medidos por ingresos?

n.articulos %>%
   group_by(grupos_paises) %>% 
   summarize(ni=n()) 
#�Cu�l fue la media y la mediana de art�culos de las publicaciones cient�ficas y t�cnicas por grupos de pa�ses en 2018?
n.articulos %>%
  group_by(grupos_paises) %>% 
  summarize(ni=n(),
            media=mean(articulos),
            mediana=median(articulos))
#�Qu� pa�ses publicaron m�s de cien mil art�culos en publicaciones cient�ficas y t�cnicas en 2018?
n.articulos %>% 
   filter(articulos>100000) %>% 
   arrange(desc(articulos))

n.articulos %>% 
  filter(articulos>100000)
# �Qu� pa�s public� la menor cantidad de art�culos en publicaciones cient�ficas y t�cnicas en 2018?  
n.articulos %>% 
  filter(articulos==min(articulos))

n.articulos %>% 
  filter(articulos==min(articulos)) %>% 
  dplyr::select(pais,articulos)
  
n.articulos %>%
  filter(pais%in% c("Ecuador", "Colombia", "Per�"))
mean(n.articulos$articulos)
median(n.articulos$articulos)
#Grafico de densidad
library(ggplot2)
ggplot(n.articulos,aes(x=articulos))+geom_density()
