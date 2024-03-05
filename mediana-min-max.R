# Cargar paquetes
library(tidyverse)
library(dplyr)
library(dslabs)

# Calcular alturas agrupando por cuantiles (devuelve el resultado en filas)
heights |>
  filter(sex == "Female") |>
  summarize(median_min_max = quantile(height, c(0.5, 0, 1)))

# Calcular alturas agrupando por cuantiles (devuelve el resultado por columnas)
median_min_max <- function(x){
  qs <- quantile(x, c(0.5, 0, 1))
  data.frame(median = qs[1], minimum = qs[2], maximum = qs[3])
}
heights |>
  filter(sex == "Female") |>
  summarize(median_min_max(height))

