function [playerName, isInternational, bowling, batting, battingPrice, bowlingPrice, isWK, budget] = data

all_data = readtable("team_optimizer_data.csv");

playerName = all_data(:, "Name");
isInternational = all_data(:, "International");
bowling = all_data(:, "NormalizedBowlingMetric");
batting = all_data(:, "NormalizedBattingMetric");
battingPrice = all_data(:, "PriceAccordingToBatting_inCrores_");
bowlingPrice = all_data(:, "PriceAccordingToBowling_inCrores_");
isWK = all_data(:, "WicketKeeper");

budget = 100; %in crores