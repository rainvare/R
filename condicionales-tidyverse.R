#Los análisis de datos típicos frecuentemente implicarán una o más operaciones condicionales, como cuando anteriormente utilizamos ifelse.

#La función case_when de dplyr vectoriza declaraciones condicionales y puede generar cualquier cantidad de valores (ifelse sólo devuelve TRUE o FALSE).

#Un uso común de case_when es definir unas variables categóricas basadas en variables existentes.

#La función between sirve para determinar si un valor cae dentro de un intervalo.





library(dplyr)
# Uso de la función case_when para vectorizar declaraciones condicionales
x <- c(-2, -1, 0, 1, 2)
case_when(x < 0 ~ "Negative",
          x > 0 ~ "Positive",
          TRUE ~ "Zero")

# Comparar las tasas de asesinatos en cuatro grupos de estados: New England, West Coast, South y Other. Usar case_when para cada estado, primero preguntamos si está en New England. Si la respuesta es no, entonces preguntamos si está en el West Coast, y si no, preguntamos si está en el South y, si no, entonces asignamos ninguna de las anteriores (Other).
murders |>
  mutate(group = case_when(
    abb %in% c("ME", "NH", "VT", "MA", "RI", "CT") ~ "New England",
    abb %in% c("WA", "OR", "CA") ~ "West Coast",
    region == "South" ~ "South",
    TRUE ~ "Other")) |>
  group_by(group) |>
  summarize(rate = sum(total)/ sum(population) * 10^5)

# Verificar si los elementos de un vector x están entre a y b
x >= a & x <= b

# Función between para verificar si los elementos de un vector x están entre a y b
between(x, a, b)

