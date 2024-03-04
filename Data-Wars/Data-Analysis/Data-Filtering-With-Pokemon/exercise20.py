import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 20) Select all Type 1 Water and Type 2 Flying pokemon
water_flying_df = poke_df.query(
    "`Type 1` == 'Water' and `Type 2` == 'Flying'" 
)
print("\nWater flying pokemon: ")
print(water_flying_df[['Name', 'Type 1', 'Type 2']])