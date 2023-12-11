
# Prueba de hipótesis 

# Ejemplo

# Supongamos que un fabricante de baterias afirma que la 
# duración promedio de una bateria es de más de 50 horas. 
# En una muestra de 25 baterias, se descubrió que solo duran 
# 48 horas en promedio. Supongamos que la desviación estándar de 
# la población es de 5 horas. Con un nivel de significancia de 
# alpha=0.05, ¿podemos rechazar la afirmación del fabricante? 



# *Solución*

# La hipótesis nula es que µ mayor o igual que 50 horas. 
# Comenzamos con el cálculo de estadística de la prueba. 

# *Variables*

#   xbar = 48    -> Media de la muestra 

#  mu0 = 50    -> Valor hipotético 

#  sigma = 5    -> Desviación estándar de población

#  n = 25         -> Tamaño de la muestra 

xbar <- 48    
mu0 <- 50
sigma <- 5
n <- 25
z <- (xbar-mu0)/(sigma/sqrt(n))



# Calculamos el valor crítico a un nivel de significación de 
# alpha = 0.05

# alpha = 0.05

# z.alpha = qnorm(1-alpha) -> Valor crítico

# -z.alpha   -> Resultado


alpha = 0.05
z.alpha = qnorm(1-alpha)
-z.alpha


#  *Respuesta*

# En este caso, como -2 < -1.645, rechazamos la hipotesis nula (HO)
# Por lo tanto, a un nivel de significación de 
# *alpha=0.05* .Hay suficiente evidencia para afirmar  que la duración
# promedio de las baterias es más de 50 horas, en contra de la afrimación 
#del fabricante.


mean <- 0;    sd   <- 2
lb   <- -2;   ub   <- -1.645

x <- seq(-2,2,length=50)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
     main="Normal Distribution", axes=FALSE)

i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="pink")

area <- pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
result <- paste("P(",lb,"< IQ <",ub,") =",
                signif(area, digits=4))
mtext(result,3)
axis(1, at=seq(-2, 2, 1), pos=0)


#  *Solución alternativa*

# En lugar de utilizar el valor crítico, aplicamos la función 
# pnorm para calcular el p-valor de la cola inferior de la prueba 
# de estadística. Como resulta ser menor que el nivel de 
# significación alpha=0.05, rechazamos la hipótesis nula de que 
# mu es mayor o igual a 10,000

# p-valor mayor o igual que alpha


pval=pnorm(z)
pval


# Se grafica con un código similar al anterior, para graficar 
# el p valor, dándonos cuenta de que ya no se muestra dentro 
# de nuestra gráfica. 

mean <- 0;    sd   <- 1
lb   <- -100000;   ub   <- -4.5644

x <- seq(-4,4,length=1000)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
     main="Normal Distribution", axes=FALSE)
points(-4.5644,0)
i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="green")

area <- pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
result <- paste("P(",lb,"< IQ <",ub,") =",
                signif(area, digits=4))
mtext(result,3)
axis(1, at=seq(-4, 4, 1), pos=0)


# Problema 1

# Un fabricante de helados afirma que la cantidad de helado
# en sus envases es mayor que 200 gramos. En una muestra de cinco 
# envases, se descubrió que la producción es de 198 gramos 
# en promedio. Suponga que la desviación estándar de la población 
# es de 8. Con un nivel de significancia de alpha=0.1, ¿podemos 
# rechazar la afirmación del fabricante? 

# *Solución*

# La hipótesis nula es que µ mayor o igual que 198. Comenzamos 
# con el cálculo estadístico de la prueba. 

# *Variables*

# xbar = 198    -> Media de la muestra 

# mu0 = 200    -> Valor hipotético 

# sigma = 8    -> Desviación estándar de población

# n = 5         -> Tamaño de la muestra


xbar  <- 198	                     
mu0   <- 200	                     
sigma <- 8	                     
n     <- 5                      
z <- (xbar-mu0)/(sigma/sqrt(n)) 
z 			     

# *Solución*

# Entonces calculamos el valor crítico a un nivel de significación 
# de alpha=0.01

# alpha = 1

# z.alpha = qnorm(1-alpha)       -> Valor crítico

# -z.alpha                       -> Resultado


alpha = 0.1
z.alpha = qnorm(1-alpha) 
-z.alpha


# Se procede a hacer la comparación y ver si se cumple la 
# condición o no. 

# *Respuesta*

# La prueba estadística de z = -1.282, rechazamos la hipotesis nula.
# Por lo tanto, a un nivel de significación de alpha=0.1, hay suficiente
# evidencia para afirmar que la cantidad promedio de helado en los envases
# es mayor de 200 gramos.

# Realizamos el gráfico. 

mean <- 0;    sd   <- 1
lb   <- -4;   ub   <- -1.282

x <- seq(-4,4,length=200)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
     main="Normal Distribution", axes=FALSE)
points(-1.03923,0)
i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="purple")

area <- pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
result <- paste("P(",lb,"< IQ <",ub,") =",
                signif(area, digits=4))
mtext(result,3)
axis(1, at=seq(-4, 4, 1), pos=0)



# Se grafica con un código similar al anterior, para graficar el 
# p valor, dándonos cuenta de que ya no se muestra dentro de 
# nuestra gráfica. 

mean <- 0;    sd   <- 1
lb   <- -4;   ub   <- -1.03923

x <- seq(-4,4,length=1000)*sd + mean
hx <- dnorm(x,mean,sd)

plot(x, hx, type="n", xlab="IQ Values", ylab="",
     main="Normal Distribution", axes=FALSE)
points(-1.281552,0)
i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red")

area <- pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
result <- paste("P(",lb,"< IQ <",ub,") =",
                signif(area, digits=4))
mtext(result,3)
axis(1, at=seq(-4, 4, 1), pos=0)

