# Cargar paquetes y preparar la data - conjuntos de datos de alturas
library(tidyverse)
library(dplyr)
library(dslabs)
data(heights)
heights <- setDT(heights)

# Resumir en dplyr
s <- heights %>%
  summarize(average = mean(height), standard_deviation = sd(height))

# Resumir en data.table
s <- heights[, .(average = mean(height), standard_deviation = sd(height))]

# Crear subconjuntos y entonces resumir en dplyr
s <- heights %>%
  filter(sex == "Female") %>%
  summarize(average = mean(height), standard_deviation = sd(height))

# Crear subconjuntos y entonces resumir en in data.table
s <- heights[sex == "Female", .(average = mean(height), standard_deviation = sd(height))]

# Función anteriormente definida
median_min_max <- function(x){
  qs <- quantile(x, c(0.5, 0, 1))
  data.frame(median = qs[1], minimum = qs[2], maximum = qs[3])
}


# Múltiples resúmenes en data.table
heights[, .(median_min_max(height))]

# Agrupar y luego resumir en data.table
heights[, .(average = mean(height), standard_deviation = sd(height)), by = sex]

