
rango = range(20)
print(type(rango))

print("\nSe imprimirá hasta 20:")
for element in (range(20)): 
    print(element)

print("\nSe imprimirá desde 5 hasta 20 pero de dos en dos:")
for element in (range(5,20,2)): 
    print(element)

print("\nImprimirá la lista 23, 45, 67, 89, 43:")
mylist = [23,45,67,89,43]
for element in mylist:
    print(element)

print("\nSe imprime tupla de nico, juli y santi:")
mytuple = ("nico", "juli", "santi")
for element in mytuple:
    print(element)

product = {
    "name": "camisa",
    "price": 100,
    "stock": 89
}

print("itera e imprime el objeto")
for key in product:
    print(key, "=>", product[key])

for key, value in product.items():
    print(key, "=>", value)


print("\nSe imprime un objeto con mas objetos dentro:")
people = [
    {
        "name": "nico",
        "age": 34
    },
    {
        "name": "zule",
        "age": 45
    },
    {
        "name": "santi",
        "age": 4
    }
]

for person in people:
    print(f'{person["name"]} tiene {person["age"]} años')
    print("name =>", person["name"])
    print("age =>", person["age"])
    print("\n")

