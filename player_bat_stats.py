import requests
from bs4 import BeautifulSoup
import re
import data_models


def batting_stats (player_name):


    source = requests.get(f"https://www.google.com/search?q={player_name}%20cricbuzz").text


    page = BeautifulSoup(source, "lxml")
    page = page.find("div",class_="kCrYT")
    link = page.find("a", href=re.compile(r"[/]([a-z]|[A-Z])\w+")).attrs["href"]


    c =  requests.get(link[7:]).text
    cric = BeautifulSoup(c, "lxml")



    icc = cric.find_all("div",class_="cb-col cb-col-25 cb-plyr-rank text-right")

    country = cric.find("h3", class_="cb-font-18 text-gray").text.strip()



    summary  = cric.find_all("div",class_="cb-plyr-tbl")
    batting =summary[0]
    bowling =summary[1]


    batstat = batting.find_all("td",class_="text-right")

    odi_innings = batstat[14].text
    odiavg = batstat[18].text
    odisr = batstat[20].text
    odi100 = batstat[21].text
    odi50 = batstat[23].text

    bowstat = bowling.find_all("td",class_="text-right")



    bat_stats = data_models.BattingStats(country= country,average=odiavg, strike_rate = odisr, hundred = odi100, fifty = odi50, innings=odi_innings)

    return bat_stats


