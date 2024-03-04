import pandas as pd

poke_df = pd.read_csv('Pokemon.csv')

# 8) How many pokemon have attack > 150?
df = poke_df.loc[poke_df['Attack'] > 150]
print()
print("Pokemons with attack > 150: ")
print()
print(df[['Name', 'Attack']].sort_values(by='Attack'))
print()
print(f"There are {df.shape[0]} pokemons with attack > 150.")