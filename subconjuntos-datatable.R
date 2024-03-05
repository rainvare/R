# Cargar paquetes y preparar los datos
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
library(data.table)
murders <- setDT(murders)
murders <- mutate(murders, rate = total / population * 10^5)
murders[, rate := total / population * 100000]

# Manera de crear subconjuntos en dplyr
filter(murders, rate <= 0.7)

# Forma de crear subconjuntos en data.table
murders[rate <= 0.7]

# Combinar filter y select en data.table
murders[rate <= 0.7, .(state, rate)]
# Combinar filter y select en dplyr

murders %>% filter(rate <= 0.7) %>% select(state, rate