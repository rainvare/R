
#En general, la conversión forzada es un intento de R de ser flexible con tipos de datos por medio de adivinar el significado de una entrada que no coincide con lo esperado.
#R realiza conversión forzada antes de devolver error como resultado.
#Por ejemplo, cuando definimos x como:
  
  
  
  
#R forzó una conversión de los datos a caracteres. Adivinó que debería ser letra porque pusimos una cadena de letras en el vector, implicamos que el 1 y el 3 serían cadenas de caracteres "1" y "3". Es importante observar que R ni siquiera emitió advertencia, por lo cual debemos extremar precauciones en el análisis y considerar que esto sucede.

#La función as.character() convierte números en caracteres.

#La función as.numeric() convierte caracteres en números.

#En R, los datos faltantes o que R encuentra imposibles en una conversión son asignados con el valor NA.
#------------------------------
#Código
x <- c(1, "canada", 3)
# Cambiar funciones de numéricas a carácteres
x <- 1:5
y <- as.character(x)
y
# Cambiar lo anterior y regresar los valores a numéricos
as.numeric(y)
# Conversión donde se encuentra un imposible y R convierte dicha entrada a NA o no disponible en español
x <- c("1", "b", "3")
as.numeric(x) 