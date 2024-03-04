import pandas as pd

poke_df = pd.read_csv('Pokemon.csv')

# 6) Maximum value of attack?
max_attack = poke_df['Attack'].max()
print(f"Max attack value: {max_attack}")