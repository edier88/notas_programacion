print(10 > 5 and 5 < 10)

role = "admin"

print(role=="admin" or role=="root")

# negacion
print(not(5 == 5))

if True:
    print("verdadero")

if False: # pero nunca se ejecuta porque el IF se activa cuando la condicion es positiva
    print("falso")

pet = input("ponga su mascota: ")

if pet == "gato":
    print("si es gato")
elif pet == "perro":
    print("si es perro")
elif pet == "pez":
    print("si es pez")
else:
    print("no conozco esa mascota")

# funcion "in":

text = "Ella sabe programar en Python"
print('JavaScript' in text)
print('Python' in text)

if 'JS' in text:
    print("Si esta")
else:
    print("no esta")