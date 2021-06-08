clear all
close all
clc
%%

t = readtable('Accelration Position.txt', 'ReadVariableNames', false);
%time = seconds(t.Var1(:));
accelx = t.Var1(:);
accely = movmean(t.Var2(:),25);
accelz = t.Var3(:);

subplot(311)
hold on
plot(accely)
plot(accelx)
title('Acceleration of IMU')
xlabel('Time(ms)')
ylabel('Acceleration(m/s^2)')

subplot(312)
velx = cumtrapz(accelx);
plot(velx)
title('Velocity of IMU')
xlabel('Time(ms)')
ylabel('Velocity(m/s)')

subplot(313)
posx = cumtrapz(velx);
plot(posx)
title('Position of IMU')
xlabel('Time(ms)')
ylabel('Position(m)')
