from math import pow as p
from math import sqrt as sq
from random import randint as r
from random import shuffle as sh
from random import choice as c

result_1 = p(2,4)
print("result_1 is", result_1)

result_2 = sq(16)
print("result_2 is", result_2)

result_3 = r(0,100)
print("result_3 is", result_3)

names = ["Amaryllis", "Goodson", "Emily", "Reina", "Derin", "Elena", "Inacio"]
print("Original names: ", names)

sh(names)
print("Names after shuffling: ", names)

result_4 = c(names)
print("Chosen name is: ", result_4)