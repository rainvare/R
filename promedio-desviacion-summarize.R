# Cargar paquetes y datos
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)

# Calcula promedio y desviación estándar para mujeres
s <- heights |>
  filter(sex == "Female") |>
  summarize(average = mean(height), standard_deviation = sd(height))

# Acceder a los componentes con el operador $
s$average
s$standard_deviation

# Promedio de altura
mean(height)

# Calcular con el ejemplo de asesinatos
murders <- murders |> mutate(rate = total/population*100000)
summarize(murders, mean(rate))

# Calcular tomando en cuenta el peso de cada estado
us_murder_rate <- murders |>
  summarize(rate = sum(total)/ sum(population) * 100000)
us_murder_rate



# Calcular con el ejemplo de asesinatos
murders <- murders |> mutate(rate = total/population*100000)
summarize(murders, mean(rate))

# Calcular tomando en cuenta el peso de cada estado
us_murder_rate <- murders |>
  summarize(rate = sum(total)/ sum(population) * 100000)
us_murder_rate
