% clear all
close all
clc
%%

t = readtable('Angular Position LPF 15Hz.txt', 'ReadVariableNames', false);
time = seconds(t.Var1(:));
angle = t.Var3(:)/103*360;

figure()

subplot(121)
hold on
r = robustfit(time, angle) % line of best fit
plot(time, r(2)*time + r(1))
plot(time, angle) % raw angular data
ylabel('Angular Position(Degrees) ')
xlabel('Time(s)')
title('Angular Position Raw')

subplot(122)

r = robustfit(time, movmean(angle,20)) % line of best fit
plot(time, r(2)*time + r(1))
hold on
plot(time, mod(movmean(angle,20),360)) % running average angular data


ylabel('Angular Position(Degrees)')
xlabel('Time(s)')
title('Angular Position w/ Running Avg.')

figure()

plot(time, mod(r(2)*time + r(1),360)) % running average angular data
