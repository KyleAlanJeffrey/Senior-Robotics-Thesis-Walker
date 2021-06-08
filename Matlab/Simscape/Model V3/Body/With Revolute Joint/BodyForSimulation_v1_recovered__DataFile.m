% Simscape(TM) Multibody(TM) version: 7.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(2).translation = [0.0 0.0 0.0];
smiData.RigidTransform(2).angle = 0.0;
smiData.RigidTransform(2).axis = [0.0 0.0 0.0];
smiData.RigidTransform(2).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 0.00053648499999999996 -0.0077882300000000002];  % m
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(1).ID = 'RootGround[Mr+OPJKQq3lyAA1jv]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-0 -0.027663515 -0.0077882300000000002];  % m
smiData.RigidTransform(2).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(2).axis = [1 0 0];
smiData.RigidTransform(2).ID = 'SixDofRigidTransform[MiWceZFEyhFsvttAu]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(2).mass = 0.0;
smiData.Solid(2).CoM = [0.0 0.0 0.0];
smiData.Solid(2).MoI = [0.0 0.0 0.0];
smiData.Solid(2).PoI = [0.0 0.0 0.0];
smiData.Solid(2).color = [0.0 0.0 0.0];
smiData.Solid(2).opacity = 0.0;
smiData.Solid(2).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.039242998799999998;  % kg
smiData.Solid(1).CoM = [1.3000000000000001e-08 0.0069411050000000004 -0];  % m
smiData.Solid(1).MoI = [1.4868000000000001e-05 2.0752999999999999e-05 2.4391000000000001e-05];  % kg*m^2
smiData.Solid(1).PoI = [0 0 0];  % kg*m^2
smiData.Solid(1).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(1).opacity = 1.000000000;
smiData.Solid(1).ID = 'JFH*:*d5c4e871222b4ecdf6ce8cd0';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.00099267045299999989;  % kg
smiData.Solid(2).CoM = [-0 0.0074999999999999997 0.056000000000000001];  % m
smiData.Solid(2).MoI = [9.2999999999999999e-08 9.8000000000000004e-08 6.9999999999999998e-09];  % kg*m^2
smiData.Solid(2).PoI = [0 0 0];  % kg*m^2
smiData.Solid(2).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(2).opacity = 1.000000000;
smiData.Solid(2).ID = 'JFD*:*d5c4e871222b4ecdf6ce8cd0';

