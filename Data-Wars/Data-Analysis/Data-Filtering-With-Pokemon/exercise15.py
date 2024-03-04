import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 15) Which Type 1 'Ice' poke has the strongest def?
sorted_ice_poke_df = poke_df[poke_df['Type 1'] == 'Ice'].sort_values(by='Defense', ascending=False)
print("\nSorted Ice poke by defense: \n")
print(sorted_ice_poke_df[['Name', 'Defense', 'Type 1']])
poke_name = sorted_ice_poke_df.iloc[0]['Name']
poke_def = sorted_ice_poke_df.iloc[0]['Defense']
print(f"\nIce poke with strongest def name: {poke_name}")
print(f"{poke_name} has def: {poke_def}")
