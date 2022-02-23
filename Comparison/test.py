import pandas as pd
import matplotlib.pyplot as plt

arr = pd.read_excel('compare.xlsx')
print(arr)

y1 = list(arr['x1'])
y2 = list(arr['x2'])
x = len(arr['x1'])
print(x)
x = list(range(1, x+1))
print(x)

plt.scatter(x, y1, s=3, c="red")
plt.scatter(x, y2, s=3, c="blue")
plt.show()
