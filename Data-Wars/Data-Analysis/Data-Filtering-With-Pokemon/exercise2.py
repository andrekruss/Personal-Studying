import pandas as pd

poke_df = pd.read_csv('Pokemon.csv')

# 2) Type of index of dataframe?
index_type = type(poke_df.index)
print(f"Type of DataFrame index: {index_type}")