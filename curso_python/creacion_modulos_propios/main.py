import miModulo # Importo el modulo creado en "mod.py"

def ejecutarMainDesdeAlla():
    keys, values = miModulo.get_population()
    print(keys, values)

    print(miModulo.A)

    data = [
        {
            'Country': 'Colombia',
            'Population': 300,
            'Corruption': 100
        },
        {
            'Country': 'Bolivia',
            'Population': 200,
            'Corruption': 0
        }
    ]

    country = input('Type country => ')

    result = miModulo.populationByCountry(data, country)
    print(result)

def run():
    print("esto es un ejemplo de correr archivo como script desde la terminal")

# Para correr esta funcion como script desde la terminal:
if __name__ == '__main__':
    run()
