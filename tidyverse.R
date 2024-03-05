#Hasta ahora hemos manipulado vectores mediante indexación en el vector. Sin embargo, la forma preferida para análisis más complejos es hacer cambios directamente en el data frame.

#Trabajaremos con un formato de datos específico denominado tidy y nos enfocaremos en una colección específica de paquetes que se denomina el tidyverse.

#Una tabla de datos está en formato tidy si cada fila representa una observación y las columnas representan las diferentes variables disponibles para cada una de estas observaciones.

#La función mutate toma el data frame como primer argumento y el nombre y los valores de la variable como segundo argumento usando la convención name = values.

#La función filter filtra la tabla de datos para mostrar entradas de nuestro interés. Filter toma la tabla de datos como primer argumento y luego la declaración condicional como el segundo.

#La función select permite ver sólo algunas columnas.

#-------------------

# Cargar tidyverse
library(tidyverse)

# Añadir tasas de asesinatos con mutate
library(dslabs)
data("murders")
murders <- mutate(murders, rate = total/ population * 100000)

# Observamos la nueva columna que ha sido añadida
head(murders)

# Filtrar la tabla de datos para mostrar solo las entradas para las cuales la tasa de asesinatos es inferior a 0.71
filter(murders, rate <= 0.71)

# Seleccionar tres columnas, asignamos el resultado a un nuevo objeto y luego filtramos este nuevo objeto:
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)
Ver sección tidyverse.
Introducción a tidyverse


