# Asigne los nombres de las ciudades a `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Guarde los valores de las temperaturas en `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convierta la temperatura a Celsius y reescriba los valores originales de 
#'temp' con los valores Celsius 
temp <- 5 / 9 * (temp - 32)

# Genere un data frame llamado `city_temps` 
city_temps <- data.frame(name = city, temperature = temp)
#imprime el data frame `city_temps`
city_temps