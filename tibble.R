# Los datos tidy deben almacenarse en data frames. Los tibbles son la forma favorita del tidyverse.

#El tbl es un tipo especial de data frame. Las funciones group_by y summarize siempre devuelven este tipo de data frame.

#Los tibbles son muy similares a los data frames. De hecho, pueden pensar en ellos como una versión moderna pero con tres diferencias importantes: los tibbles se ven mejor, los subconjuntos de tibbles son tibbles, los tibbles pueden tener entradas complejas y los tibbles se pueden agrupar.



#Analizar con el ejemplo que hemos utilizado y observen la línea #a tibble seguida por sus dimensiones
murders |> group_by(region)

# Explorar la clase de objeto devuelto:
murders |> group_by(region) |> class()

# Comparar la presentación de los datos de las dos siguientes maneras:
murders
as_tibble(murders)

# Al crear subconjuntos de las columnas de un data frame, puede devolver un objeto que no es un data frame, como un vector o escalar, pero con tibbles eso no sucede. Compare las dos opciones a continuación:
class(murders[,4])
class(as_tibble(murders)[,4])

# Para acceder al vector que define una columna y no recuperar un data frame utilice el operador de acceso $:
class(as_tibble(murders)$population)

# Compare las dos siguientes formas. Escriba el nombre de la variable incorrectamente (Population en lugar de population) y obtendrá una advertencia si intenta acceder a una columna que no existe. Tibbles, además de advertencia, proporciona información.
murders$Population
as_tibble(murders)$Population

# Crear un tibble en lugar de un data frame
grades <- tibble(names = c("John", "Juan", "Jean", "Yao"),
                 exam_1 = c(95, 80, 90, 85),
                 exam_2 = c(90, 85, 85, 90))

