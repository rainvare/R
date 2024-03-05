# Podemos escribir una versión sencilla de una función que calcula el promedio así:
avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}

# Ahora avg es una función que calcula el promedio (también vemos que la función anterior y la función R mean() preconstruida son idénticas):
x <- 1:100
identical(mean(x), avg(x))

# Observen que las variables definidas dentro de una función no se guardan en el espacio de trabajo. Por lo tanto, mientras usamos "s" y "n" cuando llamamos (call en inglés) "avg", los valores se crean y cambian solo durante la llamada. Aquí podemos ver un ejemplo ilustrativo:
s <- 3
avg(1:10)
s

# Las funciones que definen pueden tener múltiples argumentos, así como valores predeterminados. Por ejemplo, podemos definir una función que calcule el promedio aritmético o geométrico dependiendo de una variable definida por usuarios como ésta:
avg <- function(x, arithmetic = TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}