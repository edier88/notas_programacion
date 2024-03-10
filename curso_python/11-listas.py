# Listas:

numbers = [1,2,3,4]
print(numbers)
print(type(numbers))
print(numbers[:3])

tasks = ['make a dishes', 'play videogames']
print(tasks)

tasks[0] = "watch netflix"
print(tasks)

types = [1, True, "hola"]
print(True in types)
print("hola" in types)

numbers = [1,2,3,45,67]
print(numbers)
print(numbers[1])
numbers[-1] = 10
print(numbers)

numbers.append(700)
print(numbers)

numbers.insert(0, "hola")
print(numbers)

numbers.insert(3, "change")
print(numbers)

tasks = ["todo 1", "todo 2", "todo 3"]
newList = numbers + tasks
print(newList)

print(newList.index("todo 2")) # index dice en qué posicion esta un elemento de la lista

newList.remove("todo 1")
print(newList)

newList.pop()
print(newList)

newList.pop(0)
print(newList)

newList.reverse()
print(newList)

numbers_a = [1,4,2,4,86,2]
numbers_a.sort()
print(numbers_a)

strings = ['re', 'ab', 'ed']
strings.sort()
print(strings)