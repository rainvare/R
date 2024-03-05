#Las listas son útiles  porque pueden almacenar cualquier
#combinación de diferentes tipos de datos.

#Los data frames son un caso especial de listas.
#Así como en los data frames, pueden extraerse componentes de una lista 
#con el operador de acceso $ o con los corchetes dobles [[.
                                                                                                                                                                                
                                                                                                                                                                                El método de corchetes dobles es útil para extraer componentes de una lista sobre todo si la lista no tiene nombres de variable

# Crear una lista utilizando la función list:
record <- list(name = "John Doe",
               student_id = 1234,
               grades = c(95, 82, 91, 97, 93),
               final_grade = "A")

# La lista de arriba incluye un carácter, un número, un vector con cinco números y un carácter:
record
class(record)

# Extraer los componentes de la lista con el operador $:
record$student_id

# Extraer los componentes de la lista con los corchetes dobles [[:
record[["student_id"]]

# Encontrar listas sin nombres de variables:
record2 <- list("John Doe", 1234)
record2

# Utilizar método de corchetes para extraer elementos cuando una lista no tiene nombres de variables:
record2[[1]] 
