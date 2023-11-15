
  
#______________ Muestreo ______________

knitr::opts_chunk$set(echo = TRUE)


#Muestreo aleatorio simple

#Generar numero aleatorios para una muestra de 61 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV.
#Confiabilidad de 95% y 5% de error.
#x= del 1 al 73, que corresponde a la poblacion
#side= 61 que corresponde al tamaño de la muestra

#En este link se calculo la muestra
#<http://www.macorr.com/sample-size-calculator.htm>
  
  
  
sample(1:73, 61, replace=TRUE)


#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 83 alumnas y alumnos que se encuentran en primer grado de la Licenciatura en Educación Primaria de la BENV.

#Muestra es de 68 alumnos/as

#1.2.- Una vez que obtengas el tamaño de la muestra, selecciona el número de lista de las personas que formaran parte de la muestra.


sample(1:83, 68, replace=FALSE)


#1.3.- Crea un vector llamado muestra con los números de lista de las personas que forman parte de la muestra.

#Forma larga: copiar y pegar, despues poner comas a cada uno


Muestra<-c(1, 77, 38, 11, 63, 32, 46,  5, 66, 25, 76, 69, 78, 56, 65, 33, 79, 60, 13, 44, 16, 31,  4, 80, 62, 36, 67, 20, 41,  1, 12,  9, 47, 33, 35, 48, 54, 68, 72, 24, 28, 73,  6, 58, 74, 57, 30,  8, 52, 70, 21, 15, 59, 23, 71,  2, 26, 49, 10, 83,  7, 53, 27, 64, 61, 18, 65, 50, 45, 40, 82)


#Forma corta:profesional

muestra2<-sample(1:83, 68, replace=FALSE)
muestra2



#Muestreo estratificado

#Matricula de la escuela 235

#Primero:20
#Segundo:26
#Tercero:46
#Cuarto:45
#Quinto:58
#Sexto:40



MuestraPrimero<-sample(1:20, 19, replace=FALSE)
MuestraPrimero


MuestraSegundo<-sample(1:26, 24, replace=FALSE)
MuestraSegundo


MuestraTercero<-sample(1:46, 41, replace= FALSE)
MuestraTercero


MuestraCuarto<-sample(1:45, 40, replace=FALSE)
MuestraCuarto

MuestraQuinto<-sample(1:58, 51, replace=FALSE)
MuestraQuinto


MuestraSexto<-sample(1:40, 36, replace=FALSE)
MuestraSexto






