import pandas as pd

poke_df = pd.read_csv('Pokemon.csv')

# 3) How many columns does the dataframe have?
print(f"Number of columns: {poke_df.shape[1]}")