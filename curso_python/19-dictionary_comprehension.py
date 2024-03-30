dict = {}

for i in range(1, 5):
    dict[i] = i * 2

print(dict)

# sintaxis mas corta (esto es lo mismo de arriba) (Dict comprehension)

dict_v2 = {i: i * 2 for i in range(1,5)}
print(dict_v2)


import random

countries = ['col', 'mex', 'bol', 'pe']
population = {}

for country in countries:
    population[country] = random.randint(1,100)

print(population)


# sintaxis mas corta (esto es lo mismo de arriba) (Dict comprehension)

population_v2 = {country: random.randint(1,100) for country in countries}
print(population_v2)

names = ['nico', 'zule', 'santi']
ages = [12,56,98]

# Quiero que quede asi (es decir, juntar las listas para hacer un diccionario asi:)
{
    'nico': 12,
    'zule': 56,
    'santi': 98
}


#juntamos las dos listas:
print(list(zip(names,ages)))

new_dict = {name: age for (name,age) in zip(names,ages)}
print(new_dict)


# CONDICIONES:

result = { country: population for (country,population) in population_v2.items() if population > 20 }
print(result)

text = "Hola, soy humano"
unique = { char: char.upper() for char in text if char in 'aeiou' }
print(unique) # No repetirá vocales, en un diccionario no se repiten items

'''
        Mutable     Ordenada    Indexing/Slicing    Duplicar elementso
List    yes         yes         yes                 yes

Tuple   No          yes         yes                 yes

Set     yes         No          No                  No

'''