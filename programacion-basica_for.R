# Genera una función que calcule la suma de los números enteros del 1 al n
compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}

# Quizás el ejemplo más sencillo de un bucle - for 
for(i in 1:5){
  print(i)
}

# Un bucle - for para nuestra suma
m <- 25
s_n <- vector(length = m) # crear un vector vacío
for(n in 1:m){
  s_n[n] <- compute_s_n(n)
}

# Crear un gráfico para buscar un patrón y revisar si la fórmula anterior funciona 
n <- 1:m
plot(n, s_n)

# Genera una tabla de valores que compara nuestra función con la fórmula de suma cabeza "Formula head":
(data.frame(s_n = s_n, formula = n*(n+1)/2))

# Superponer nuestra función con la fórmula de suma
plot(n, s_n)
lines(n, n*(n+1)/2)