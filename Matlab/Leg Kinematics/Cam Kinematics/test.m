clear all
close all
clc

L = 120;
D = .4*L;
H = .43*L;

lambda = asin(H/(L-D));
lambda = asin(2*H/(L+D));
theta = [lambda:0.01:pi-lambda];
R = -H./sin(theta);
% R_2 = -H./sin(pi-theta)

polarplot(theta, R);
hold on
polarplot(theta, R+L);
polarplot(theta, R+((L+D)/2)); % upper track
polarplot(theta, R+((L+D)/2)-D); %lower track
legend()
