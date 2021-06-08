clear all
close all
clc
%% create trajectory
t = 0:1:359;
r= 7.5/1000;
r2=1/1000; %radius of curvature of corners
rc_offx = 6.427/1000;
rc_offy = 1/1000;
rc1 = [r2*cosd(t)-rc_offx; r2*sind(t)+rc_offy];
rc2 = [r2*cosd(t)+rc_offx; r2*sind(t)+rc_offy];

x = r*cosd(t);
for i=1: length(t)
    y(i)=r*sind(t(i));
    if(t(i)>180);
        y(i) = 0;
    end
    if(t(i)>171 && t(i) < 180+31)
        j = (i - 171)*2 + 171; % quick way to change range of rc2
        x(i) = rc1(1,j);
        y(i) = rc1(2,j);
    end
    if(t(i)<9)
        j = i; % quick way to change range of rc2
        x(i) = rc2(1,j);
        y(i) = rc2(2,j);
    end
    if(t(i)>360-31)
        j = mod((i - 329)*2 + 270,360); % quick way to change range of rc2
        x(i) = rc2(1,j);
        y(i) = rc2(2,j);
    end
    
end
hold on
plot(x',y','.r')
plot(rc1(1,:),rc1(2,:), 'b')
plot(rc2(1,:),rc2(2,:), 'b')
axis equal
