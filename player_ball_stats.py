import requests
from bs4 import BeautifulSoup
import re
import data_models


def bowling_stats(player_name):
    source = requests.get(f"https://www.google.com/search?q={player_name}%20cricbuzz").text

    page = BeautifulSoup(source, "lxml")
    page = page.find("div", class_="kCrYT")
    link = page.find("a", href=re.compile(r"[/]([a-z]|[A-Z])\w+")).attrs["href"]

    c = requests.get(link[7:]).text
    cric = BeautifulSoup(c, "lxml")



    summary = cric.find_all("div", class_="cb-plyr-tbl")
    batting = summary[0]
    bowling = summary[1]




    bowstat = bowling.find_all("td", class_="text-right")
    odiwickets = bowstat[16].text

    odiecon = bowstat[19].text
    bowavg = bowstat[20].text
    bowsr = bowstat[21].text

    ball_stats = data_models.BowlingStats(wickets = odiwickets, economy = odiecon,average= bowavg, strike_rate= bowsr)

    return ball_stats


