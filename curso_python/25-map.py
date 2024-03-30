'''

MAP( ) La función map () ejecuta una función especifica para cada elemento en un iterable
y el elemento se envía a la función como un parámetro.

Sintaxis:
map(function, iterables)

'''


numbers = [1, 2, 3, 4]

numbers_v2 = list(map(lambda i: i*2, numbers))

print(numbers_v2)

# Otro ejemplo:

numbers2 = [1,2,3,4]
numbers3 = [5,6,7]

result = list(map(lambda x, y: x + y, numbers2, numbers3))
print(result)




# Maps con diccionarios:


items = [
    {
        'product': 'camisa',
        'price': 100
    },
    {
        'product': 'pantalon',
        'price': 300
    },
    {
        'product': 'pantalones',
        'price': 200
    }
]

price = list(map(lambda item: item['price'], items))
print(price)

def addTaxes(item):
    item['taxes'] = item['price'] * 0.19
    return item

newItems = list(map(addTaxes, items))
print(newItems)