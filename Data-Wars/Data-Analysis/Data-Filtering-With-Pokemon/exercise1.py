import pandas as pd

poke_df = pd.read_csv('Pokemon.csv')

# 1) How many rows has our DataFrame?
print(f"Number of rows: {poke_df.shape[0]}")