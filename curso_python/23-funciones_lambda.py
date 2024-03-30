# Funciones Lambda (funciones anonimas)

def increment(x):
    return x + 1

result = increment(10)
print(result)

# Es lo mismo de arriba
increment_v2 = lambda x : x+1 

result = increment(20)
print(result)

# Lambdas manejando mas de un valor

full_name = lambda name, lastName: f'Full name es {name.title()} {lastName.title()}'

text = full_name('nicolas', 'perez')
print(text)