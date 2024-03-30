def my_print():
    print('este es un ejemplo de funcion')

my_print()

def my_print2(text):
    print(text*2)

my_print2("holaaa")

# Funciones con RETURN:

def sum_with_range(min, max):
    sum = 0
    
    for x in range(min, max):
        sum += x
    
    return sum

print(sum_with_range(5,40))


# Parametros por defecto en la funcion:

def calculate_volume(length=1, width=1, depth=1):
    return (length * width * depth)

result = calculate_volume()

print(result)


# Retornando multiples valores:

def calculate_volume2(length=1, width=1, depth=1):
    return (length * width * depth), width, "hola"

result = calculate_volume2() #Esto devolverá una tupla

print(result)
print(result[0])

# Tambien lo puedo discriminar asi:
result, width, text = calculate_volume2()
print(result)
print(width)
print(text)
