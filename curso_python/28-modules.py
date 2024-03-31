import sys
print("Ruta del modulo sys: \n")
print(sys.path)

import re # modulo de expresiones regulares:
text = "Mi numero de telefono es 311 123 121, el codigo del pais es 57, mi numero de la suerte es 3"
result = re.findall('[0-9]+', text)
print("Resultado expresion regular - modulo expresion regular")
print(result)

import time # Modulo de tiempos
timestamp = time.time()
print(timestamp)

local = time.localtime()
result = time.asctime(local)

import collections # Modulo para manejar listas
numbers = [1,1,2,1,2,1,4,5,3,3,21]
counter = collections.Counter(numbers)
print(counter) # La frecuencia de los numeros dentro de la lista