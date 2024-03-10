rango = range(20)
print(type(rango))

for element in (range(20)): 
    print(element)

mylist = [23,45,67,89,43]
for element in mylist:
    print(element)

mytuple = ("nico", "juli", "santi")
for element in mytuple:
    print(element)

product = {
    "name": "camisa",
    "price": 100,
    "stock": 89
}

for key in product:
    print(key, "=>", product[key])

for key, value in product.items():
    print(key, "=>", value)

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
    print("name =>", person["name"])

