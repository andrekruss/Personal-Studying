import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 11) How many pokes are Type 1 Fire and Type 2 Flying?
fire_flying_df = poke_df.query("`Type 1` == 'Fire' and `Type 2` == 'Flying'")
print("\nFire Flying Pokemons: \n")
print(fire_flying_df[['Name', 'Type 1', 'Type 2']])
print(f"Number of Fire-Flying pokes: {fire_flying_df.shape[0]}")