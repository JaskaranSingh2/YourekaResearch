import pandas as pd
import matplotlib.pyplot as plt
sheet = pd.read_excel('Book1.xlsx')
sheet.head()

xAxisLength = [1, 2, 3]

# metroY, xNone, xPart, xWhole

metroY = (sheet["metroY"])
xNone = (sheet["xNone"])
xPart = (sheet["xPart"])
xWhole = (sheet["xWhole"])
plt.boxplot([xNone, xPart, xWhole], vert=True)
values = ["None", "Part", "Whole"]
plt.xticks(xAxisLength, values)
plt.ylabel("Counts?")
plt.title("Boxplots")
plt.show()
