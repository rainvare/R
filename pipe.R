#Podemos realizar una serie de operaciones, por ejemplo select y entonces filter, enviando los resultados de una función a otra función usando el pipe, |>.

#El pipe funciona bien con las funciones donde el primer argumento son los datos de entrada.

#Las funciones en los paquetes tidyverse y dplyr tienen este formato y se pueden usar fácilmente con el pipe.
#--------------------

#el pipe envía el resultado que se encuentra en el lado izquierdo del pipe para ser el primer argumento de la función en el lado derecho del pipe:
16 |> sqrt()
16 |> sqrt() |> log2()
16 |> sqrt() |> log(base = 2)

# usando el pipe
murders |> select(state, region, rate) |> filter(rate <= 0.71)
