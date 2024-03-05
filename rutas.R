# Ejemplo de ruta completa en su sistema
system.file(package = "dslabs")

# Uso de list.files para ver ejemplos de rutas relativas
dir <- system.file(package = "dslabs")
list.files(path = dir)

# Obtener ruta completa del directorio de trabajo
wd <- getwd()

# Otra manera de obtener la ruta completa sin escribirla explícitamente como cuando creamos anteriormente el ejemplo fullpath
filename <- "murders.csv"
dir <- system.file("extdata", package = "dslabs")
fullpath <- file.path(dir, filename)

# Ahora exploramos los directorios en dir y observamos que contiene el archivo de nuestro interés: extdata
dir <- system.file(package = "dslabs")
filename %in% list.files(file.path(dir, "extdata"))

# Uso de system.file para proveer un subdirectorio como primer argumento y que podamos obtener la ruta completa del directorio extdata
dir <- system.file("extdata", package = "dslabs")

# Uso de la función file.path se usa para combinar los nombres de directorios para producir la ruta completa del archivo que queremos importar
fullpath <- file.path(dir, filename)

# La función file.copy para copiar el archivo en nuestro directorio, ésta toma dos argumentos: el nombre del archivo para copiar y el nombre que se usará en el nuevo directorio. (Si se copia exitosamente, devolverá TRUE).
file.copy(fullpath, "murders.csv")

# La función list.files para ver el archivo en su directorio de trabajo
list.files()