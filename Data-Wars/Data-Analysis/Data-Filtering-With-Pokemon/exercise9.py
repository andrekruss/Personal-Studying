import pandas as pd

poke_df = pd.read_csv('Pokemon.csv')

# 9) Select all pokemons with speed <= 10
df = poke_df[poke_df['Speed'] <= 10]
print("\nPokemons with speed <= 10:\n")
print(df[['Name', 'Speed']].sort_values(by='Speed'))
print(f"\nNumber of Pokemons with speed <= 10: {df.shape[0]}")