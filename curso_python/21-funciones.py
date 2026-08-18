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
    # Vamos a meter un Docstring. La documentción, descripcion d ela funcion
    '''Funcion que calcula el volumen de un objeto'''
    return (length * width * depth), width, "hola"


# Para que se imprima la explicacion (Docstring de la funcion):
print(calculate_volume2.__doc__)
result = calculate_volume2() #Esto devolverá una tupla

print(result)
print(result[0])

# Tambien lo puedo discriminar asi:
result, width, text = calculate_volume2()
print(result)
print(width)
print(text)


# FUNCIONES CON NUMERO VARIABLE DE ARGUMENTOS:

def adiciones_pizza(*adiciones): # podemos ponerle multiples variables a la funcion
    print(adiciones)

print(adiciones_pizza('jamon','tomate','piña'))


def adiciones_pizza_v2(base='queso y tomate', *adiciones):
    print(f'Base: {base}')
    print('Adiciones')

    for adicion in adiciones:
        print(f'\t{adicion}')


adiciones_pizza_v2('queso','albahaca','jamon')



# FUNCIONES CON MULTIPLES VALORES DE RETORNO:

def operaciones(*numeros):
    suma = 0
    resta = 0
    multiplicacion = 1

    for numero in numeros:
        suma += numero
        resta -= numero
        multiplicacion *= numero

    return suma, resta, multiplicacion # <- Se retornan multiples variables

res_suma, res_resta, res_mult = operaciones(5,7,3)

print(f'suma: {res_suma}, resta: {res_resta}, multiplicacion: {res_mult}')
