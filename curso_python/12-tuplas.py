numbers = (1,2,3,5,78,8,4,3,2)
strings = ('nico', 'zule', 'santi')

print(numbers)
print(numbers[0])

# una tupla no se puede modificar, solamente se pueden leer sus elementos
# para modificar una tupla hay que convertirla en lista:

myList = list(strings) # se convierte la tupla en lista
print(myList)
print(type(myList))

myList[1] = "no"
print(myList)