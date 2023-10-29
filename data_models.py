class BattingStats:
    def __init__(self,country,  average, strike_rate, hundred, fifty):
        self.average = average
        self.strike_rate = strike_rate
        self.hundred = hundred
        self.fifty = fifty
        self.country = country

class BowlingStats:
    def __init__(self, wickets, economy):
        self.wickets = wickets
        self.economy = economy