# Podemos crear un simple diagrama de dispersión usando la función plot().

# Los histogramas son resúmenes gráficos eficaces que le permiten ver generalmente los tipos de valores que tienen. En R, se pueden producir usando la función hist().

# La función image() presenta los valores en una matriz usando color.

# --------------------------------------------


# Cargar paquetes y datos
library(dplyr)
library(dslabs)
data("murders")

# Gráfico de total de asesinatos versus población
x <- murders$population/ 10^6
y <- murders$total
plot(x, y)

# Uso de with para crear un gráfico rápido que no accede a las variables dos veces
with(murders, plot(population, total))
# Histograma de las tasas de homicidio
x <- with(murders, total/ population * 100000)
hist(x)

# La función image muestra los valores en una matriz usando color
x <- matrix(1:120, 12, 10)
image(x)
