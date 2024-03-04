import pandas as pd

poke_df = pd.read_csv('Pokemon.csv')

# 11) Select all legendary pokemon
legendaries_df = poke_df[poke_df['Legendary']]
print("\nLegendary pokes: \n")
print(legendaries_df[['Name', 'Legendary']].sort_values(by='Name'))
print(f"\nNumber of legendaries: {legendaries_df.shape[0]}")