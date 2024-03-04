import pandas as pd
import matplotlib.pyplot as plt

poke_df = pd.read_csv('Pokemon.csv')

# 12) Create a scatterplot correlating attack and defense.
# What is the name of the pokemon with strong defense, but very low attack? (outlier)
highest_def_df = poke_df.sort_values(by='Defense', ascending=False)
print("\nPokemons with highest def: \n")
print(highest_def_df[['Name', 'Defense', 'Attack']].head())
# looking at the 'highest_def_df', we can see shuckle is the outlier
# with row_index 230
outlier_row_index = 230
outlier_name = poke_df.iloc[outlier_row_index]['Name']
print(f"\nOutlier name is: {outlier_name}")


# Creating a scatterplot and annotating the outlier (high def, low attack)
poke_df.plot.scatter(x='Defense', y='Attack', c='red', s=20)
plt.xlabel('Defense')
plt.ylabel('Attack')
plt.title('Attack x Defense')
plt.annotate(
    'Outlier!', 
    xy=(230.3, 9.1), 
    xytext=(210.3, 29.1), 
    arrowprops=dict(facecolor='black', arrowstyle='->')
)
plt.show()

