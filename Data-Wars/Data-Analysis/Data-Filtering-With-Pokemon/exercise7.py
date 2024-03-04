import pandas as pd

poke_df = pd.read_csv('Pokemon.csv')

# 7) Average value of speed?
mean_speed = poke_df['Speed'].mean()
print(f"Average speed value: {mean_speed:.2f}")