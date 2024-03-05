# Cargar paquetes y datos
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)

# Ordenar tablas enteras con la función arrange, con base en la población
murders |>
  arrange(population) |>
  head()

# Para ver los estados por tasa de asesinatos, desde menor a mayor, organizamos con la función rate
murders |>
  arrange(rate) |>
  head()

# Ordenar la tabla en orden descendente
murders |>
  arrange(desc(rate))

# Ordenar anidadamente por región primero y luego por tasa de asesinatos
murders |>
  arrange(region, rate) |>
  head()

# Ver las 5 primeras entradas
murders |> top_n(5, rate)