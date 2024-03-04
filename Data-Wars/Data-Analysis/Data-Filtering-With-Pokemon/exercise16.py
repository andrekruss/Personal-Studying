import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 16) Most common type of legendary poke?
legedary_poke_df = poke_df[poke_df['Legendary']]
print("\nFrequency of Types in legendary pokemons: \n")
print(legedary_poke_df['Type 1'].value_counts())
most_common_type = legedary_poke_df['Type 1'].value_counts().idxmax()
most_common_type_frequency = legedary_poke_df['Type 1'].value_counts().max()
print(f"\nMost common type among legendaries: {most_common_type}")
print(f"Frequency of {most_common_type}: {most_common_type_frequency}")