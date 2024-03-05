# Buscar y copiar con código el set de datos de los asesinatos en Estados Unidos del paquete dslabs
filename <- "murders.csv"
dir <- system.file("extdata", package = "dslabs")
fullpath <- file.path(dir, filename)
file.copy(fullpath, "murders.csv")

# Importar los datos con solo una línea de código con read_csv del paquete readr del tidyverse
library(tidyverse)
dat <- read_csv(filename)