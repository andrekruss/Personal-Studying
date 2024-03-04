import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 23) Create a piechart of Type 1. What is the most common type
# and the least common type?

type1_counts = poke_df['Type 1'].value_counts()

most_common_type_name = type1_counts.idxmax()
most_common_type_percentage = 100 * (type1_counts.max() / len(poke_df))
print(f"\nMost common type is {most_common_type_name} with {most_common_type_percentage:.2f}%")

least_common_type_name = type1_counts.idxmin()
least_common_type_percentage = 100 * (type1_counts.min() / len(poke_df))
print(f"\nLeast common type is {least_common_type_name} with {least_common_type_percentage:.2f}%")

plt.figure(figsize=(8, 6))
type1_counts.plot(kind='pie', autopct='%1.1f%%', startangle=140)
plt.title('Distribution of Pokemon Types (Type 1)')
plt.axis('equal')
plt.show()

