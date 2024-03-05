# Debido a que nuestro paquete dslabs está en GitHub, el archivo que descargamos con el paquete tiene una URL
url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"

# El archivo read_csv puede leer estos archivos directamente. Deberá escribir el url directamente, no la palabra "url"
dat <- read_csv(url)

# Uso de download.file para tener una copia local del archivo
download.file(url, "murders.csv")

# Código que borra el archivo temporero una vez que importe los datos con tempfile
tmp_filename <- tempfile()
download.file(url, tmp_filename)
dat <- read_csv(tmp_filename)
file.remove(tmp_filename)