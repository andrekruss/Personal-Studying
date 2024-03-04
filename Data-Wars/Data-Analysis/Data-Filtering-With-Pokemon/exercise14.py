import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 14) How many pokemon are type 'Poison' in either Type 1 or Type 2?
poison_df = poke_df[ (poke_df['Type 1'] == 'Poison') | (poke_df['Type 2'] == 'Poison')]
print("\nPoison type pokemons: \n")
print(poison_df[['Name', 'Type 1', 'Type 2']])
print(f"\nNumber of poison pokes: {poison_df.shape[0]}")