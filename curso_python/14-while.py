"""
while True:
    print("se ejecuta infinitamente")
"""

counter = 0

while counter < 10:
    counter += 1
    print(counter)

counter = 0

while counter < 20:
    counter += 1
    if counter == 15:
        break
    print(counter)

while counter < 20:
    counter += 1
    if counter >= 15:
        print(counter)
        continue
