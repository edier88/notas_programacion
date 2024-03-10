name = "nicolas"
lastName = "gonzalez"

fullName = name + lastName

print(fullName)

# Comillas simples o dobles dentro del texto:

comillas1 = "I'm ok"
comillas1 = 'Ella dijo "hola"'

# formatear texto:

template = "Hola, mi nombre es " +name+ " mi apellido es " +lastName
print(template)

template = "Hola, mi nombre es {}, mi apellido es {}".format(name, lastName)

print("v2", template)

template = f"Hola, mi nombre es {name}, mi apellido es {lastName}"

print("v3", template)


text = "Ella sabe programar en Python"

size = len(text)
print(size)
print(text.upper())
print(text.lower())
print(text.count('a')) # cuantas veces esta la letra "a" en la variable string "text"
print(text.swapcase())
print(text.startswith('Ella'))
print(text.startswith('Python'))
print(text.replace('Python', 'PHP'))

text2 = "este es un titulo"
print(text2)
print(text2.capitalize())
print(text2.title())
print(text2.isdigit())
print("398".isdigit())

text3 = "Ella sabe Python"
print(text3)
print(text3[0])
print(text3[1])

size = len(text3)
print('size => ', size)
print(text3[size - 1])
print(text3[-1])

print(text3[0:5])
print(text3[10:16])
print(text3[:10])
print(text3[5:-1])
print(text3[5:])
print(text3[:])
print(text3[10:16:1]) # numero de saltos=1
print(text3[10:16:2]) # numero de saltos=2
print(text3[::2]) # numero de saltos=2