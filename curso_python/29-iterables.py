for i in range(1, 10):
    print(i)

myIterable = iter(range(1, 11))
print(myIterable)

print(next(myIterable)) # La primera interacion de la variable iterador myIter
print(next(myIterable))
print(next(myIterable))