import pandas as pd
import subprocess

df = pd.read_csv("team_optimizer_data.csv", index_col='Index')

input_line = input("Copy and Paste the GAMS output here: ")

input_indices = [int(entry.split()[0]) for entry in input_line.split(',')]

selected_rows = df.loc[input_indices]

print()
print("Picked squad - ")
print()

for _, row in selected_rows.iterrows():
    wicket_keeper_label = "(WK)" if row['Wicket Keeper'] == "YES" else ""
    batter_label = "Bat" if row['Batter'] == 1 else "Bowl"
    
    print(f"{row['Name']}{wicket_keeper_label}      --      {batter_label}     --      {row['Country']}")

print()