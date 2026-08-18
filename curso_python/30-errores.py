age = input("escribí tu edad: ")
age = int(age)
if age < 18:
    raise Exception('Sos menor de edad, pailas')

print("holaaa") # esta linea NO se ejecuta si salta la excepción
