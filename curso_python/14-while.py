"""
while True:
    print("se ejecuta infinitamente")
"""

counter = 0

print("\nse incrementará hasta que llegue a 10:")
while counter < 10:
    counter += 1
    print(counter)

counter = 0

print("\nse incrementará hasta que llegue a 15:")
while counter < 20:
    counter += 1
    if counter == 15:
        break
    print(counter)

print("\nse incrementará desde 15 hasta que llegue a 20:")
print(counter)
while counter < 20:
    counter += 1
    if counter >= 15:
        print(counter)
        continue

print(f'\nEl numero ha llegado hasta: {counter}.')
