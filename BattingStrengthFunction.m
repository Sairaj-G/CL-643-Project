
function f = BattingStrengthFunction(x)

[~, isInternational, bowling, batting, battingPrice, bowlingPrice, isWK, budget] = data;

batsmen = 0;
bowlers = 0;
WCs = 0;
international = 0;
totalPlayers = 0;
cost = 0;
netBatting = 0;



for i = 1 : 60
    if(x(i) == 1)
        totalPlayers = totalPlayers + 1;
        if(isWK(i) == "YES")
            WCs = WCs + 1;
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
totalWCPenalty = 0;
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

if(cost > budget)
    budgetPenalty = 10^5;
end

if(international > 4)
    totalInternationalPenalty = 10^5;
end

f = -netBatting + 10^15*(totalPlayerPenalty + totalBowlerPenalty + totalBatsmenPenalty + budgetPenalty + totalInternationalPenalty);





