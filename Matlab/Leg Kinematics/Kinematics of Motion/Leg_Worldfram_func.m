function [l] = Leg_Worldfram_func(x,y,tau, dx, cx, cy)
%LEG_WORLDFRAM_FUNC Summary of this function goes here
%   Detailed explanation goes here
    hold on
    plot([-100 100],[0 0], '-r');
    l(1)=plot([cx x(tau)+cx],[cy y(tau)],'-gs',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','b');
    axis equal
      xlim([0 30]);
      ylim([0 5]);
    if y(tau) > 0
%         plot(x(tau)+cx, y(tau), '.r');
    else
%         plot(x(tau)+cx, 0, '.r');    
    end
    title('Millipede Leg Motion (Velocity = 1mm/s)');
    xlabel('Distance(mm)')
    ylabel('Distance(mm)')
    hold off
    
    

end

