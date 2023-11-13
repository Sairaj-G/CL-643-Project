import all_players_list
import player_bat_stats
import player_ball_stats
import csv


first_names = all_players_list.first_names

all_players_stats = []

row_names = ["Name", "Country","Innings", "Batting Average", "Batting Strike Rate", "Hundreds", "Fifties", "Bowling Economy",
             "Wickets Taken", "Bowling Strike Rate", "Bowling Average"]



for i in range(0,60):

    if i != 9:
        player_batting = player_bat_stats.batting_stats(first_names[i])
        player_bowling = player_ball_stats.bowling_stats(first_names[i])

        country = player_batting.country
        batting_average = player_batting.average
        batting_strike_rate = player_batting.strike_rate
        hundreds = player_batting.hundred
        fifty = player_batting.fifty
        innings = player_batting.innings

        economy = player_bowling.economy
        wickets = player_bowling.wickets
        bowling_sr = player_bowling.strike_rate
        bowling_avg = player_bowling.average



        player_stats = [
            first_names[i],
            country,
            innings,
            batting_average,
            batting_strike_rate,
            hundreds,
            fifty,
            economy,
            wickets,
            bowling_sr,
            bowling_avg
        ]

        all_players_stats.append(player_stats)



with open("all_players.csv", "w") as file:
    writer = csv.writer(file)
    writer.writerow(row_names)
    writer.writerows(all_players_stats)






