library(dslabs)
data(murders)

# Acceda a la variable `state` (estados) y guárdela en un objeto llamado 'states' 
states <- murders$state 

# Clasifique el objeto alfabéticamente y redefina el objeto states  
states <- sort(states) 

# Reporte el primer valor alfabético   
states[1]

# Acceda a los valores de la población (population) del set de datos y 
#guárdelo en "pop"

pop <- murders$population

# Clasifique el objeto y guárdelo en el mismo objeto 
pop <- sort(pop)

# Reporte el menor tamaño de población en "pop" 

pop[1]