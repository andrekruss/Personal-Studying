import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 17) Most powerful Type 1 'Water' by Total stats from the first three gens?
filtered_df = poke_df[
    (poke_df['Type 1'] == 'Water')
    &
    (
        (poke_df['Generation'] == 1)
        | (poke_df['Generation'] == 2)
        | (poke_df['Generation'] == 3)
    )
].sort_values(by='Total', ascending=False)
print("\nDataFrame with water pokes from gens 1, 2 and 3: \n")
print(filtered_df[['Name', 'Total','Type 1', 'Generation']])
name = filtered_df.iloc[0]['Name']
total = filtered_df.iloc[0]['Total']
print(f"\nStrongest water type name from first three gens: {name}")
print(f"{name} total stats: {total}")
