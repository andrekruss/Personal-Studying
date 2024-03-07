# DATASETS OBTAINED FROM:
# https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

import pandas as pd

file_name = 'olist_customers_dataset.csv'
file_path = f'../datasets/{file_name}'

customers_df = pd.read_csv(file_path)
# a) Number of null values in state column?
num_nulls = customers_df[
    'customer_state'
].isnull().sum()
print(f'Number of null values in state column: {num_nulls}')
print()

# b) How many customers are from the state SP?

# Method 1
sp_customers_df = customers_df[
    customers_df['customer_state'] == 'SP'
]
print('First method:')
print(f'Number of SP clients: {sp_customers_df.shape[0]}')
print()

# Method 2
num_sp_customers = customers_df[
    customers_df['customer_state'] == 'SP'
].value_counts().sum()
print('Second method: ')
print(f'Number of SP clients: {num_sp_customers}')
print()

# c) Top 10 Cities with most ocurrences in SP state?
print("Top 10 cities with most ocurrences: ")
print(sp_customers_df[
    'customer_city'
    ]
    .value_counts()
    .head(10)
)
print()

# d) Top 10 Cities with the least ocurrences in SP state?
print("Top 10 cities with the least ocurrences: ")
print(sp_customers_df[
    'customer_city'
    ]
    .value_counts()
    .tail(10)
)
print()

# e) Top 5 states with the most ocurrences?
top5_states_series = customers_df[
    'customer_state'
    ].value_counts().head(5)   
print('Top 5 states with the most ocurrences: ')
print(top5_states_series)
print()

# f) Bottom 5 states by ocurrences?
bottom5_states_series = customers_df[
    'customer_state'
].value_counts().tail(5)
print('Bottom 5 states by ocurrence: ')
print(top5_states_series)
print()

# g) 10 cities from any state with more ocurrences?
top10_cities_series = customers_df[
    ['customer_city', 'customer_state']
].value_counts().head(10)
print('Top 10 cities with most ocurrences from any state: ')
print(top10_cities_series)