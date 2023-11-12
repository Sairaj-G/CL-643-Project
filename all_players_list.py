import requests
from bs4 import BeautifulSoup
import re

teams = ["/14/india", "/16/new-zealand", "/19/south-africa", "/15/australia"]



source_url = "https://www.cricketworldcup.com/teams"

all_players = []
first_names = []


for i in range(0,4):
    source_team = source_url + teams[i]

    print(source_team)


    source = requests.get(source_team).text
    doc = BeautifulSoup(source, "lxml")

    first_name = doc.find_all("p", class_ = "player-profile-squad-list__name")




    for j in range(0,15):
        first_names.append(first_name[j].text.strip())




print(first_names)
