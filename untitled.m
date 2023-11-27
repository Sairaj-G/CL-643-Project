
prob = @BattingStrengthFunction;
lb = zeros(1,60);
ub = ones(1,60);

[~,~,~,~] = tlbo(prob, lb, ub, 50, 100);


