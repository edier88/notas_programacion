mydict = {}
print(type(mydict))

mydict = {
    "name": "nicolas",
    "lastName": "Molina",
    "age": 87
}

print(mydict)
print(len(mydict))

print(mydict["age"])
print(mydict["lastName"])
print(mydict.get("unvalor"))

print("avion" in mydict)
print("otroqueno" in mydict)

person = {
    "name": "nicolas",
    "lastName": "Molina",
    "age": 87,
    "langs": ["python", "javascript"]
}

print("nuevo diccionario:")
print(person)

person["name"] = "santi"
person["age"] -= 50
person["langs"].append("rust")
person["nuevo"] = "este es nuevo"
print(person)

del person["lastName"] # Se elimina lastName
person.pop("age") # Se elimina age

print(person)

print("items:")
print(person.items())

print("keys:")
print(person.keys())

print("values:")
print(person.values())

print("-------------------------------")

person2 = {
    'name': 'Nicolas',
    'lastName': 'Molina',
    'age': 29
}

# Escribe tu solución 👇

person2["twitter"] = "@nicobytes"
person2["name"] = "Felipe"
del person2["age"]

print(list(person2.keys()))
print(list(person2.values()))