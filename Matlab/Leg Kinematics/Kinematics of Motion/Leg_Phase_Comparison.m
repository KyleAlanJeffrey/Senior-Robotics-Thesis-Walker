clear all;
close all;
clc;
%% Defined Constants Time Model ISP Model
dt = .01; % Time step
t_series = [0:dt:5];
R = 1; % eliptical width radius
H = R+.866; % height of wave from floor. This gives 60 deg span
w = 1; %angular velocity rad/s
V_w = 1; % Millipede velocity mm/s
leg_pair_space = 2*R;
leg_rot_offset = pi/3;

x=@(tau) -R*cos(tau);
y=@(tau) H-R*(1-sin(tau));

figure(1)
hold on
num_leg_pairs = 2;
for b=1:5 % iteratwe throug leg numbers
    leg_rot_offset=0
    for p=1:4 % iterate through offsets
        no_contact_points = 0; % amount of delta t times no leg is touching ground
        for i = 1:length(t_series)
            t = t_series(i);   % time
            tau = w*t;  % angle of rotation
            cy = H-R;     % height of circle of rotation
            
            %Check ground contact
            % If no legs are touching ground, add to no_contact_points
            contact = 0;
            for k=1: num_leg_pairs
                if y(tau + leg_rot_offset*(k-1)) <= 0 || y(tau + leg_rot_offset*(k-1) + pi) <= 0 ...
                        || y(tau + leg_rot_offset*(k-1) + pi/2) <= 0 || y(tau + leg_rot_offset*(k-1) + 3*pi/2) <= 0
                    contact = 1;
                end
            end
            if(~contact)
                no_contact_points=no_contact_points+1;
            end
            dx = V_w*(t-dt*no_contact_points); % distance travelled based on velocity
            cx = dx;    % center of circle of rotation
            pos(i)=dx;
        end
        str = ['Robot Position, ', num2str(num_leg_pairs*2), ' Legs, ', num2str(rad2deg(leg_rot_offset)), ' deg Offset'];
        l=((b-1)*4)+p;
        numLegs(l) = num_leg_pairs;
        offset(l) = leg_rot_offset;
        time_off_ground(l) = no_contact_points*dt;

        plot(t_series,pos,'DisplayName', str);
        leg_rot_offset = leg_rot_offset + deg2rad(30)
    end
    num_leg_pairs = num_leg_pairs + 1
end
hold off
xlabel('Time(s)');
ylabel('Distance(mm)');
legend();


t=table(numLegs',rad2deg(offset)',time_off_ground' ,  'VariableNames',{'Legs','Phase Difference','Time of No Ground Contact'})
table2latex(t,'table.tex');