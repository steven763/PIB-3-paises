#  Análisis del Pib de los paises de Ecuador, Colombia, Bolivia, Costa rica, Panam
Este repositorio contiene un script en R diseñado para analizar el PIB del año 2022 información sacada del Banco mundial. A continuación, se detallan los pasos seguidos en el código para que puedas entender y ejecutar el análisis por tu cuenta.

## Instalación de Paquetes

install.packages("tidyverse")
library(tidyverse)
install.packages("ggplot2")
library(ggplot2)
install.packages("openxlsx")
library(openxlsx)

# importar datos
Deberas primero importar los datos los cuales seran punto de analisís

# ingreso de codigo attach
conecta a un pin ajustando los valores en mínimo y máximo en microsegundos

attach(paises)

# ingreso de codigo colMeans
le daremos nombre a cierta variables y se calcularán las sumas de las columnas de una matriz y los promedios de sus renglones

pib_paises <- colMeans(paises[,c("Ecuador", "Colombia", "Bolivia", "Costa rica", "Panamá")])

# corremos la variable

pib_paises

# ahora vamos al paso de graficar
para esto usararemos un grafico de barra

barplot(pib_paises)

# editar el coidgo
esto servira para que los valores no comienzen desde 0

barplot(pib_paises,
        ylim = c(10000,343622114560))


### Explicación de las líneas de código del gráfico

pib_paises <- colMeans(paises[,c("Ecuador", "Colombia", "Bolivia", "Costa rica", "Panamá")])
el código calcula el promedio del PIB de los países mencionados (Ecuador, Colombia, Bolivia, Costa Rica y Panamá) y lo almacena en la variable pib_paises.


barplot(pib_paises)
el código genera un gráfico de barras que muestra la distribución de los promedios del PIB de los países mencionados. 


barplot(pib_paises,
        ylim = c(10000,343622114560))
establece los límites del eje y desde 10,000 hasta 343,622,114,560. Esto significa que el eje y en el gráfico de barras se extenderá desde 10,000 hasta 343,622,114,560 unidades. 




# Ejecución del Código
Para ejecutar este análisis, simplemente copia y pega el código en tu entorno de R y asegúrate de tener el conjunto de datos, del PIB de los tres paises, del año 2022, que se encuentra en pagina del Banco mundial


        