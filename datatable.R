# ¡Instale el paquete data.table antes de usarlo!
install.packages("data.table")

# Cargue el paquete data.table
library(data.table)

# Cargue otros paquetes y conjuntos de datos
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)

# Convierta el data frame en un objeto data.table
murders <- setDT(murders)

# Recuerde cómo seleccionar en dplyr
select(murders, state, region)

# Ahora, seleccione en data.table por medio de 2 métodos
murders[, c("state", "region")] |> head()
murders[, .(state, region)] |> head()

# Añadir o cambiar una columna en dplyr
murders <- mutate(murders, rate = total / population * 100000)

# Añadir o cambiar una columna en in data.table
murders[, rate := total / population * 100000]
head(murders)

# Definir columnas nuevas por medio de los argumentos rate y rank
murders[, ":="(rate = total / population * 100000, rank = rank(population))]

# Es importante hacer copias de una tabla, y se refiere a x y := cambia por referencia
x <- data.table(a = 1)
y <- x

# Verificar valores de los objetos
x[,a := 2]
y
y[,a := 1]
x

# Use copy para crear una verdadera copia
x <- data.table(a = 1)
y <- copy(x)
x[,a := 2]
y