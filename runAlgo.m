clear;clc;
Nruns = 1;
T = 100;
Np = 50;

prob = @BattingStrengthFunction;
lb = zeros(1, 60);
ub = ones(1, 60);

for i = 1 : Nruns
    [bestsol,~,~,~] = tlbo(prob,lb,ub,Np,T);
end

display(bestsol);