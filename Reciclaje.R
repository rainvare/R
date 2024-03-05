#Si los vectores no coinciden en longitud, 
#es natural suponer que no pueden realizarse
#las operaciones y veremos un error, 
#aunque tal no es el caso. 
#R proveerá una advertencia, 
#pero realizará la operación aritmética.

#Código
# Genere dos vectores de distinta longitud
x <- c(1, 2, 3)
y <- c(10, 20, 30, 40, 50, 60, 70)

# Realice la suma de los dos vectores de arriba y observe la advertencia y el reciclaje del último dígito del resultado
x+y 