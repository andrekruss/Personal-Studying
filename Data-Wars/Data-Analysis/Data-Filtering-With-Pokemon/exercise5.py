import pandas as pd

poke_df = pd.read_csv('Pokemon.csv')

# 5) Type of Column 'Name'?
column_type = poke_df['Name'].dtype
print(f"Type of column 'Name': {column_type}")