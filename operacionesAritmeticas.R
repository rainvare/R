# En R, las operaciones aritméticas aplicadas a vectores ocurren elemento por elemento.
#Cuando aplicamos operaciones aritméticas 
#(como suma, resta, multiplicación y división)
#a dos vectores de la misma longitud, las operaciones se aplican entrada por entrada.

#Cargar paquete y datos
library(dslabs)
data("murders")

# Obtener el nombre del estado con la mayor población
murders$state[which.max(murders$population)]

# Operaciones aritméticas con vectores (ejemplo de altura en pulgadas)
inches <- c(69, 62, 66, 70, 70, 73, 67, 73, 67, 70)

# Convertir a centímetros multiplicando inches por 2.54
inches * 2.54
# Calcular qué tan alto o bajo respecto a 69 pulgadas, se utiliza la resta
inches - 69

# Calcular la tasa de asesinatos
murder_rate <- murders$total / murders$population * 100000

# Ordenar los estados por tasa de asesinatos, en orden decreciente
murders$state[order(murder_rate, decreasing=TRUE)]

