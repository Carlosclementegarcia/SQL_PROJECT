import pandas as pd

df= pd.read_csv(r'C:\Users\cleme\laboratorios\SQL_PROJECT\data\actor.csv')



df_actor = df.drop('last_update', axis=1)

df.head()
df_actor.shape

duplicados = df_actor[df.duplicated(['first_name', 'last_name'])]
duplicados
df_actor.drop(109, inplace=True)

df_actor.to_csv(r'C:\Users\cleme\laboratorios\SQL_PROJECT\data', index= False)