import all_players_list
import player_bat_stats
import player_ball_stats
import csv


first_names = all_players_list.first_names

all_players_stats = []

row_names = ["Name", "Country", "Batting Average", "Batting Strike Rate", "Hundreds", "Fifties", "Bowling Economy", "Wickets Taken"]


for i in range(0,149):
    player_batting = player_bat_stats.batting_stats(first_names[i])
    player_bowling = player_ball_stats.bowling_stats(first_names[i])

    country = player_batting.country
    batting_average = player_batting.average
    batting_strike_rate = player_batting.strike_rate
    hundreds = player_batting.hundred
    fifty = player_batting.fifty

    economy = player_bowling.economy
    wickets = player_bowling.wickets



    player_stats = [
        first_names[i],
        country,
        batting_average,
        batting_strike_rate,
        hundreds,
        fifty,
        economy,
        wickets
    ]

    all_players_stats.append(player_stats)

    print(first_names[i])

with open("all_players.csv", "w") as file:
    writer = csv.writer(file)
    writer.writerow(row_names)
    writer.writerows(all_players_stats)






