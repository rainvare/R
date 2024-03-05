# Los factores son otro tipo de clases
class(murders$region)

# Para obtener los niveles de un factor utilice:
levels(murders$region)

#Tome la suma del total de asesinatos en cada región y reordene el factor según estas sumas:
region <- murders$region
value <- murders$total
region <- reorder(region, value, FUN = sum)
levels(region) 