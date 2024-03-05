La función sort() ordena un vector en orden creciente.

#La función order() devuelve el vector de índices que clasifica el vector de entrada. Por ejemplo, el resultado de 2 3 1 5 4 significa que el índice de vector de entrada será producido por medio de enlistar el segundo, tercero, primero, quinto y luego el cuarto elemento del vector original.

#La función max() nos indica el valor mayor, mientras que which.max() provee el índice del valor mayor. Las funciones min() y which.min() operan similarmente pero con los valores mínimos.

#La función rank() provee un vector con el rango de los elementos en el vector de entrada.

----------------------------

library(dslabs)
data(murders)
sort(murders$total)

# Ordene los elementos del siguiente vector con sort
x <- c(31, 4, 15, 92, 65)
x
sort(x)

# Calcule el índice que pondrá a x en orden y reacomode por medio del índice (ordenar)
index <- order(x)
x[index]
order(x)

# Vectores que contienen los nombres de estados y abreviaturas
murders$state[1:10]
murders$abb[1:10]

# Ordene los nombres de los estados de acuerdo con el número total de asesinatos
ind <- order(murders$total)
murders$abb[ind]

# Calcule el número mayor de total de asesinatos
max(murders$total)

# Calcule el índice del valor mayor de asesinatos
i_max <- which.max(murders$total)

# Obtenga el nombre del estado con el mayor número de asesinatos
murders$state[i_max]

# Calcule el rango de un vector x con rank
x <- c(31, 4, 15, 92, 65)
x
rank(x)   

