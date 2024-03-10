numbers = []

for element in range(1,11):
    numbers.append(element)

print(numbers)

# list comprehension reduce lo de arriba en una sola linea de codigo

numbers_v2 = [element for element in range(1,11)]
print(numbers_v2)




# -------------------------
# otro ejemplo:

numbers2 = []

for element in range(1,11):
    numbers2.append(element * 2)

print(numbers2)

# list comprehension reduce lo de arriba en una sola linea de codigo

numbers2_v2 = [element * 2 for element in range(1,11)]
print(numbers2_v2)


# -------------------------
# otro ejemplo:

numbers = []

for i in range(1,11):
    if i % 2 == 0:
        numbers.append(i * 2)

print(numbers)