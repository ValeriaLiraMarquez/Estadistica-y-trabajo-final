
# Distribuciones 


# Distibución binomial 

# Ejemplo 1: 

# Suponga que hay doce preguntas de opción múltiple en un examen 
# de matemáticas. Cada pregunta tiene cinco posibles respuestas, 
# y sólo una de ellas es correcta. Encuentre la probabilidad 
# de tener cuatro o menos respuestas correctas si un estudiante 
# intenta responder a cada pregunta al azar.

# Solución para que saque 4 respuestas correctas:

# Dado que sólo una de cada cinco respuestas posibles es 
# correcta, la probabilidad de responder correctamente una 
# pregunta al azar es de 1/5=0.2. Podemos encontrar la 
# probabilidad de tener exactamente 4 respuestas correctas 
# por intentos aleatorios de la siguiente manera:

# 1.-Probabilidad de escoger una respuesta de 5 posibles
p<-1/5

# 2.-Espacio muestral (12 preguntas en total)
n<-12

# 3.-Probabilidad de tener 4 respuestas correctas elegidas 
# aleatoriamente
k<-4

#Función en R
dbinom(k, n, 0.2)


# Suponga que hay doce preguntas de opción múltiple en un 
# examen de matemáticas. Cada pregunta tiene cinco posibles 
# respuestas, y sólo una de ellas es correcta. Encuentre 
# la probabilidad de tener cuatro o menos respuestas correctas 
# si un estudiante intenta responder a cada pregunta al azar.

#Solución 2 para que saque una respuesta o menos correcta 
# Para encontrar la probabilidad de tener cuatro o menos 
# respuestas correctas de forma aleatoria se utiliza la
# función dbinom con k=0,1,2,3,4.

# Otra forma más sencilla de calcular la probabilidad

sum(dbinom(0:4, n, p))


# Ejercicios:

# 1.- ¿Cuál es la probabilidad de que 2 o 3 preguntas sean 
# respondidas correctamente?
# (Continuación del ejercicio anterior)

# Forma fácil y rápida 
sum(dbinom(2:3, n, p))
# Forma tardada 
dbinom(2, n, 0.2)
dbinom(3, n, 0.2)

# 2.- Supongamos que la empresa Apple fabricó el Iphone 11S con 
# una probabilidad de 0.005 de ser defectuoso. El producto se 
# envía en una caja que contiene 25 artículos. ¿Cuál es la 
# probabilidad de que una caja elegida al azar contenga un 
# Iphone 11S defectuoso?

# 1. Probabilidad general = 0.005 
# 2. Probabilidad de que salga un celular defectuoso en la caja
p<-1/25
# 3. Espacio muestral 
n<-25
# 4. Probabilidad de que salga el teléfono defectuoso
k<-1
# 5. Función en R
dbinom(k, n, p)

dbinom(1, 25, 0.040)


## Distribución Poisson

# Ejemplo:

#Suponga que se desea saber el número de llegadas de los 
# estudiantes de una Escuela Primaria en un lapso de 15 minutos 
# a la entrada de la escuela. Se puede suponer que la 
# probabilidad de llegada de los estudiantes es la misma que 
# cualquiera de los dos lapsos con la misma dirección siendo 
# estas independientes a que llegue o no el estudiante. El 
# número promedio de alumnos que llegan en un lapso de 15 
# minutos son 35. Para optimizar la llegada de los estudiantes 
# evitando las aglomeraciones se requiere saber la probabilidad 
# de que lleguen 50 alumnos en 15 minutos.

# Probabilidad de que 35 alumnos lleguen en 15 minutos 
# a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.

x=35
lamda=15

dpois(x,lamda)

# Probabilidad de que 50 alumnos lleguen en 15 minutos 
# a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.

x=50
lamda=15

dpois(x,lamda)

#Ejercicios

# 1.- ¿Cuál es la probabilidad de que a la escuela lleguen 
# 34 alumnos en 5 minutos?

# Probabilidad de que 34 alumnos lleguen en 5 minutos 
# a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.

x=34
lamda=5

dpois(x,lamda)


# 2.- ¿Cuál es la probabilidad de que a la salida de la escuela,
# se encuentren 60 alumnos en 5 minutos?

# Probabilidad de que 60 alumnos salgan en 5 minutos 
# a la salida de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.

x=60
lamda=5

dpois(x,lamda)

# 3.- ¿Cuál es la probabilidad de que a la salida de la escuela,
# se encuentren 120 alumnos en 5 minutos?

# Probabilidad de que 120 alumnos salgann en 5 minutos 
# a la salida de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.

x=120
lamda=5

dpois(x,lamda)