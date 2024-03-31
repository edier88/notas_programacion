# Mi primer modulo propio en Python

def get_population():
    keys = ['col', 'bol']
    values = [300,  400]
    return keys, values

A = "Hola"

def populationByCountry(data, country):
    result = list(filter(lambda item: item['Country'] == country, data))

    return result

