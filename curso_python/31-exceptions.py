try:
    print(0/0)
except ZeroDivisionError as error:
    print(f'error: {error}')

try:
    assert 1 != 1, "uno no es igual a uno"
except AssertionError as error:
    print(f'error: {error}')

try:
    age = 10
    if age < 18:
        raise Exception('Sos menor')
except Exception as error:
    print(f'error: {error}')

print("Esta linea SÍ se ejecutará")