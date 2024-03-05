# Cargar paquetes y datos
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)

# Verificar qué clase es el objeto
class(us_murder_rate)

# Utilizar pull para acceder a los valores almacenados en los datos
us_murder_rate |> pull(rate)

# Obtener un número de la tabla de datos original con una línea de código
us_murder_rate <- murders |>
  summarize(rate = sum(total)/ sum(population) * 100000) |>
  pull(rate)
us_murder_rate
# Verificar qué clase es el objeto
class(us_murder_rate)

