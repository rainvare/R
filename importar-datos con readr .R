
 # En esta sección presentamos las principales funciones de importación del tidyverse con el uso del archivo murders.csv del paquete dslabs.
#readr es parte del paquete tidyverse e incluye funciones para leer datos almacenados en hojas de cálculo.

#Algunas funciones disponibles para leer bases de datos son:
#  La función read_table es para valores separados por espacios en blanco con sufijo típico txt.
#La función read_csv es para valores separados por comas con sufijo típico csv.
#La función read_csv2 es para valores separados por punto y coma con sufijo típico csv.
#La función read_tsv es para valores separados delimitados por tab con sufijo típico tsv.
#La función read_delim es para formato de archivo de texto general y debe definir delimitador, con sufijo típico txt.

#Para constatar que las funciones correspondan con el tipo de archivo sugerimos abrirlo para explorarlo o utilizar la función read_lines para ver algunas líneas.

#El paquete readxl ofrece funciones para leer archivos de Microsoft Excel, algunas de ellas son:
#  La función read_excel para detectar automáticamente el formato xls, xlsx.
#La función read_xls lee el formato original xls.
#La función read_xlsx para el nuevo formato xlsx.

#Las funciones listadas arriba leen predeterminadamente la primera hoja de un archivo Excel. Sin embargo, si quieres leer otras hojas, utilizaremos la función excel_sheets. Esta función te dará los nombres de todas las hojas, que podrán pasar al argumento sheet en las tres funciones anteriores para leer hojas distintas a la primera.


#Código
# Copiar el archivo murders.csv a nuestro directorio de trabajo
filename <- "murders.csv"
dir <- system.file("extdata", package = "dslabs")
fullpath <- file.path(dir, filename)
file.copy(fullpath, "murders.csv")

# Descargar readr
install.packages("readr")
library(readr)

# Uso de la función read_lines para leer algunas líneas de nuestro archivo
read_lines("murders.csv", n_max = 3)

# Después de confirmar el archivo, que es csv y ver su encabezado, podemos utilizar read_csv para cargarlo
dat <- read_csv(filename)

# dat es un tibble, no solo un data frame, porque read_csv es un leedor (parser en inglés) del tidyverse, así que confirmaremos que los datos se han leído
View(dat)

# También podemos usar la ruta completa para el archivo
dat <- read_csv(fullpath)

# Cargar el paquete readxl
install.packages("readxl")
library(readxl)
