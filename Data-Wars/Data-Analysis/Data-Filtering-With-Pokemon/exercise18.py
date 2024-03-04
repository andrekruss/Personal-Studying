import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 18) Most powerful Type 1 or Type 2 dragon from last two gens?
print("\nTaking a look at what generations are there...\n")
gen_series = poke_df['Generation'].value_counts().sort_index()
print(gen_series)
# Last two gens are:
last_gen = gen_series.last_valid_index()
penult_gen = gen_series.last_valid_index() - 1
print(f"\nLast gen number: {last_gen}")
print(f"Penult gen number: {penult_gen}")
filtered_df = poke_df[
    (
        (poke_df['Type 1'] == 'Dragon')
        | (poke_df['Type 2'] == 'Dragon')
    )
    &
    (
        (poke_df['Generation'] == last_gen)
        | (poke_df['Generation'] == penult_gen)
    )
].sort_values(by='Total', ascending=False)

print(f"\nDataFrame with strongest dragons from {penult_gen} and {last_gen}:\n")
print(filtered_df[['Name', 'Total', 'Type 1', 'Type 2', 'Generation']])

name = filtered_df.iloc[0]['Name']
total_stats = filtered_df.iloc[0]['Total']
gen = filtered_df.iloc[0]['Generation']

print("\nStrongest dragon from gens 5 and 6:")
print(f"Name: {name}")
print(f"Total stats: {total_stats}")
print(f"Generation: {gen}")