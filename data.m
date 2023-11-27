
function [playerName,isInternational, bowling, batting, battingPrice, bowlingPrice, isWK, budget] = data



all_data = readtable("team_optimizer_data.csv");

playerName = table2array(all_data(:, "Name"));
isInternational = table2array(all_data(:, "International"));
bowling = table2array(all_data(:, "NormalizedBowlingMetric"));
batting = table2array(all_data(:, "NormalizedBattingMetric"));
battingPrice = table2array(all_data(:, "PriceAccordingToBatting_inCrores_"));
bowlingPrice = table2array(all_data(:, "PriceAccordingToBowling_inCrores_"));
isWK = table2array(all_data(:, "WicketKeeper"));


budget = 100; %in crores



