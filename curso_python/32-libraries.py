import os
import glob

# con "__doc__" podemos saber qué hace la función. Esto desplegará su descripción o documentación.
print(os.getcwd.__doc__)

print("\n")

listfiles = glob.glob('*')
listfiles_texts = glob.glob('*.py')

print(listfiles)
print("\n")
print(listfiles_texts)
