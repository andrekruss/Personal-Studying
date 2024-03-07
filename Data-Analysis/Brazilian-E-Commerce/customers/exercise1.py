# DATASETS OBTAINED FROM:
# https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

import pandas as pd

file_name = 'olist_customers_dataset.csv'
file_path = f'../datasets/{file_name}'

customers_df = pd.read_csv(file_path)

# a) Print the information on customers df
print()
print(customers_df.info())
print()


# b) How many rows and columns does the df have?
print(f'Df has {customers_df.shape[0]} rows and {customers_df.shape[1]} columns')
print()

# c) Column names?
print('Column names:')
for column_name in customers_df.columns:
    print(column_name)
print()

# d) df data types?
print('Data type of  each column: ')
print(customers_df.dtypes)
print()

# e) summary of df statistics?
print(customers_df.describe())