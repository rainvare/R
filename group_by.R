library(tidyverse)
library(dplyr)
library(dslabs)

# Agrupar por sexo
heights |> group_by(sex)

# Resumir los datos después de agruparlos
heights |>
  group_by(sex) |>
  
  summarize(average = mean(height), standard_deviation = sd(height))
#Calcular la mediana, el mínimo y máximo de la tasa de asesinatos en las cuatro regiones del país
data(murders)
murders |>
  group_by(region) |>
  summarize(median_min_max(rate))