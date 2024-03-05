# Cargar paquetes y conjuntos de datos y preparar los datos
library(tidyverse)
library(dplyr)
library(data.table)
library(dslabs)
data(murders)
murders <- setDT(murders)
murders[, rate := total / population * 100000]

# Ordenar por población
murders[order(population)] |> head()

# Ordenar por población en orden descendente
murders[order(population, decreasing = TRUE)]

# Ordenamiento anidado por región y luego tasa de homicidio
murders[order(region, rate)]