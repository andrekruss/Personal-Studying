import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 21) Select ONLY columns 'Name', 'Attack' and 'Generation'
#     of all legendary Type 1 Fire pokemon in a new DF
fire_legendary_df = poke_df[
    (poke_df['Type 1'] == 'Fire')
    & (poke_df['Legendary'])
][['Name', 'Attack', 'Generation']]
print("\nLegendary fire pokemon: \n")
print(fire_legendary_df)  