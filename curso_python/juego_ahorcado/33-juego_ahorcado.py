import random

alfabeto = 'a b c d e f g h i j k l m n ñ o p q r s t u v w x y z'

# Escoger palabra aleatoriamente
def seleccionar_palabra():
    lineas = open("frutas_verduras.txt").readlines() # lee todas las lineas del archivo de texto
    palabra = random.choice(lineas).rstrip() # escoge una de las lineas. rstrip elimina los saltos de lineas de las demas lineas

    return palabra

def entrada_usuario():
    letra = input('Introduzca una letra:')

    return letra.lower() # Si oprimió una letra en mayúscula, se debe convertir en minuscula

def actualizar_jugada(palabra, letra, jugada):
    n_letras = len(palabra)

    for i in range(0, n_letras):
        if palabra[i] == letra:
            jugada[i] = letra # Ubica la letra en el espacio de la jugada

#jugada = ['_']*len(palabra) # Se crea una lista con tantos guiones bajos como números de elementos tiene la palabra a jugar
#jugada = actualizar_jugada(palabra, letra, jugada)
#print(jugada)


def actualizar_alfabeto(letra, alfabeto):
    alfabeto = alfabeto.replace(letra, " ")

    return alfabeto

#alfabeto = actualizar_alfabeto(letra, alfabeto)
#print(alfabeto)

def imprimir_actualizacion(alfabeto, jugada):
    print(f'Jugada: {jugada}')
    print(f'Letras disponibles: {alfabeto}')

#imprimir_actualizacion(alfabeto, jugada)

def verificar_jugada(suposicion, palabra):
    success = False

    if suposicion == palabra:
        success = True
    
    return success

palabra = seleccionar_palabra()
alfabeto = 'a b c d e f g h i j k l m n ñ o p q r s t u v w x y z'
jugada = ['_']*len(palabra)

for turno in range(5):
    print(f'\nTurno: {turno+1}')
    print('_'*20)

    imprimir_actualizacion(alfabeto, jugada)

    letra = entrada_usuario()

    jugada = actualizar_jugada(palabra, letra, jugada)
    alfabeto = actualizar_alfabeto(letra, alfabeto)

    imprimir_actualizacion(alfabeto, jugada)

    check = input('¿Desea adivinar la palabra? (s/n):')
    if check.lower() == 's':
        suposicion = input('Introduzca su respuesta: ').lower()
        success = verificar_jugada(suposicion, palabra)

        if success:
            print('+'*20)
            print('GANASTE!!!!')
            print('+'*20)
            break
        else:
            print('+'*20)
            print('La suposicion es incorrecta')
            print('+'*20)
    
    if turno == 4:
        print('-'*20)
        print('AHORCADO!!!')
        print('-'*20)