import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 22) Select the vary slow poke (bottom 5%) and very fast poke
# (top 5%)

speed_bottom_cutoff = poke_df['Speed'].quantile(0.05)
speed_top_cutoff = poke_df['Speed'].quantile(0.95)
print(f"\nBottom speed value cutoff: {speed_bottom_cutoff}")
print(f"\nTop speed value cutoff: {speed_top_cutoff}")

slow_fast_df = poke_df[
    (poke_df['Speed'] < speed_bottom_cutoff)
    | (poke_df['Speed'] > speed_top_cutoff)
].sort_values(by='Speed')[['Name', 'Speed']]
print("\nDataFrame of the slowest and fastest pokes: \n")
print(slow_fast_df)