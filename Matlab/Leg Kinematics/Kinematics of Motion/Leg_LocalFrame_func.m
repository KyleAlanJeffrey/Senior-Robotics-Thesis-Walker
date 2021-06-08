function [l] = Leg_LocalFrame_func(x,y,tau, dx, cx, cy)
%LEG_LOCALFRAME_FUNC Summary of this function goes here
%   Detailed explanation goes here
% Plot leg from local frame
hold on
plot([-100 100],[0 0], '-r');
l=plot([0 x(tau)],[cy y(tau)],'-gs',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','b');
axis equal
xlim([-2 2]);
ylim([-2 2]);
if y(tau) > 0
    plot(x(tau), y(tau), '.r');
else
    plot(x(tau), 0, '.r');
end
title('Millipede Leg Motion (Static)');
xlabel('Distance(mm)')
ylabel('Distance(mm)')
hold off

end

