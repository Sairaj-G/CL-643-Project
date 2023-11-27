
function [f, selectedPlayers] = BattingStrengthFunction(x)

[playerName, isInternational, bowling, batting, battingPrice, bowlingPrice, isWK, budget] = data;

batsmen = 0;
bowlers = 0;
WKs = 0;
international = 0;
totalPlayers = 0;
cost = 0;
netBatting = 0;

selectedPlayers = cell(60, size(playerName, 2));

for i = 1 : 60
    if(x(i) == 1)
        totalPlayers = totalPlayers + 1;
        selectedPlayers{totalPlayers, :} = playerName(i, :);

        if(strcmp(isWK(i,:),"YES"))
            WKs = WKs + 1;
            cost = cost + battingPrice;
        elseif(batting(i) > bowling(i))
            netBatting = netBatting + batting(i);
            batsmen = batsmen + 1;
            cost = cost + battingPrice;
        else
            bowlers = bowlers + 1;
            cost = cost + bowlingPrice;
        end

        if(isInternational(i) == "YES")
            international = international + 1;
        end
    end
end

totalPlayerPenalty = 0;
totalBatsmenPenalty = 0;
totalBowlerPenalty = 0;
totalWKPenalty = 0;
budgetPenalty = 0;
totalInternationalPenalty = 0;

if(totalPlayers ~= 15)
    totalPlayerPenalty = 10^5;
end

if(bowlers ~= 6)
    totalBowlerPenalty = 10^5;
end

if(batsmen ~= 7)
    totalBatsmenPenalty = 10^5;
end

if(WKs ~= 2)
    totalWKPenalty = 10^5;
end

if(cost > budget)
    budgetPenalty = 10^5;
end

if(international > 4 || international < 2)
    totalInternationalPenalty = 10^5;
end

selectedPlayers = selectedPlayers(1:totalPlayers, :);

f = -netBatting + 10^15*(totalPlayerPenalty + totalBowlerPenalty + totalBatsmenPenalty + totalWKPenalty + budgetPenalty + totalInternationalPenalty);