all_data = readtable("team_optimizer_data.csv");

playerName = all_data(:, "Name");
isInternartional = all_data(:, "International");
bowling = all_data(:, "NormalizedBowlingMetric");
batting = all_data(:, "NormalizedBattingMetric");
battingPrice = all_data(:, "PriceAccordingToBatting_inCrores_");
bowlingPrice = all_data(:, "PriceAccordingToBowling_inCrores_");

