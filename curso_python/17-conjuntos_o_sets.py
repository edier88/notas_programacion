# Conjuntos o Sets

# Los conjuntos no permiten que se repita un elemento

test = {'col', 'mex', 'bol', 'col'} # Imprimirá "col, mex, bol"
print(type(test))
print(test)

set_types = {1, 'hola', False, 12.12}
print(set_types)

set_from_string = set('hoolaa') # convierte la cadena de texto en un conjunto con las letras dentro de él
print(set_from_string)

# Convertir una tupla en un Set

set_from_tuple = set(('abc', 'xyz', 'abc'))
print(set_from_tuple)

# Convertir una lista en un Set
set_from_list = set([1,2,3,1,2,3,4])
print(set_from_list)



# ------------------------------------------
# Modificando conjuntos:

set_countries = {'col', 'mex', 'bol'}

size = len(set_countries)
print(size)

print('col' in set_countries)
print('pe' in set_countries)

# add

set_countries.add('pe')
print(set_countries)

set_countries.add('pe')
print(set_countries)

set_countries.add('ar')
print(set_countries)

# remove

set_countries.remove('col')
print(set_countries)

set_countries.remove('ar')
print(set_countries)

set_countries.discard('arg') # No salta error si no existe
print(set_countries)

set_countries.clear()
print(set_countries)


# Union de conjuntos

set_a = {'col', 'mex', 'bol'}
set_b = {'pe', 'bol'}

set_c = set_a.union(set_b)
print(set_c)
print(set_a | set_b) # otra forma de unir conjuntos

# interseccion
# quedan los semejantes entre los dos conjuntos
set_c = set_a.intersection(set_b)
print(set_c)
print(set_a & set_b)

# diferencia

set_c = set_a.difference(set_b)
print(set_c)
print(set_a - set_b)

# diferencia simetrica

set_c = set_a.symmetric_difference(set_b)
print(set_c)
print(set_a ^ set_b)



