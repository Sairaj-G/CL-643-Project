class BattingStats:
    def __init__(self,country,  average, strike_rate, hundred, fifty, innings):
        self.average = average
        self.strike_rate = strike_rate
        self.hundred = hundred
        self.fifty = fifty
        self.country = country
        self.innings = innings

class BowlingStats:
    def __init__(self, wickets, economy, strike_rate, average):
        self.wickets = wickets
        self.economy = economy
        self.strike_rate = strike_rate
        self.average = average