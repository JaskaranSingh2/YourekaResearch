import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

arr = pd.read_excel('compare.xlsx')
print(arr)

y1 = list(arr['x1'])
y2 = list(arr['x2'])
x = len(arr['x1'])
print(x)
x = list(range(1, x+1))
print(x)

best = np.poly1d(np.polyfit(x, y2, 3))
curve = np.linspace(1, 3193, 100)
plt.plot(curve, best(curve), color="orange", linewidth="3")

plt.scatter(x, y1, s=3, c="red", alpha=0.6)
plt.scatter(x, y2, s=3, c="blue", alpha=0.6)
plt.xlabel(
    "Each individual 3193 counties (not named because of the lack of space")
plt.show()
