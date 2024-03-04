import pandas as pd

poke_df = pd.read_csv('Pokemon.csv')

# 10) How many pokemons have 'Sp. Def' <= 25?
df = poke_df[poke_df['Sp. Def'] <= 25]
print("\nPokemons with Sp. Def <= 25: \n")
print(df[['Name', 'Sp. Def']].sort_values(by='Sp. Def'))
print(f"\nNumber of pokes with Sp.def <= 25: {df.shape[0]}")
