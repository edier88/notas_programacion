from creacion_paquetes.mod1 import function1, function2
from creacion_paquetes.mod2 import function3, function4

print(function1())
print(function2())

'''
# Otra forma seria:
import creacion_paquetes.mod1 as mod1
import creacion_paquetes.mod2 as mod2

print(mod1.function1())
print(mod2.function3())
'''