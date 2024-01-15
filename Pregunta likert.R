attach(Frecuencia)

library(readxl)
Frecuencia <- read_excel("Frecuencia.xlsx")
View(Frecuencia) 


media_reactivos <- colMeans(Frecuencia[,c("Maestro_A",
                                          "Maestro_B",
                                          "Maestro_C")])

media_reactivos


barplot(media_reactivos,
        barplot(media_reactivos,  main = "Frecuencia de uso de los LTG",
        ylim = c(0,4),
        xlab = "Maestros encuestados",
        ylab = "Frecuencia",
        col = c("blue"))
        
