import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 19) Select all Type 1 Fire pokemon with attack > 100
powerful_fire_df = poke_df[
    (poke_df['Type 1'] == 'Fire')
    & (poke_df['Attack'] > 100)
]
print("\nStrongest fire pokemon: ")
print(powerful_fire_df[['Name', 'Attack', 'Type 1']])