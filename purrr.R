# Cargar paquete
library(purrr)

# Anteriormente construimos una función y utilizamos sapply para calcular la suma de los primeros n enteros para varios valores de n
compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}
n <- 1:25
s_n <- sapply(n, compute_s_n)

# Función map que devuelve una lista
s_n <- map(n, compute_s_n)
class(s_n)

# Función map_dbln para vector numérico
s_n <- map_dbl(n, compute_s_n)
class(s_n)

# Uso de map_df
s_n <- map_df(n, compute_s_n) #la función que llamamos debe devolver un vector o una lista con nombres, por esta razón, el siguiente código daría como resultado un error Argument 1 must have names

# Cambiar la función para corregir el error
compute_s_n <- function(n){
  x <- 1:n
  tibble(sum = sum(x))
}
s_n <- map_df(n, compute_s_n)

