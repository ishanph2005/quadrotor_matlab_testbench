%% Controller + 6-DOF parameters

%% Controller
% Position P
Kp_x = 0.1;
Kp_y = 0.1;
Kp_z = 0.1;

% Velocity PID
% [x y z]
Kp_v = [1, 1, 1]; 
Ki_v = [0.1, 0.1, 0.1];
Kd_v = [0, 0, 0];

% Attitude P
Kp_phi = 12;
Kp_theta = 12;
Kp_psi = 10;

% Body rate PID
% [x, y, z]
Kp_pqr = [2, 2, 2];
Ki_pqr = [0.1, 0.1, 0.1];
Kd_pqr = [0, 0, 0];

%% Limits

% Velocities
v_x_max = 10;
v_y_max = 10;
v_z_max = 10;

% Accelerations
a_x_max = 5;
a_y_max = 5;
a_z_max = 5;

% Body rates
p_max = 1;
q_max = 1;
r_max = 1;

% Torques
tau_x_max = 0.5;
tau_y_max = 0.5;
tau_z_max = 0.5;

% Max roll/pitch angle in radians, for validity of linearization
angle_max = 0.1745; 
% Max squared angular velocity of propeller
omega_sq_max = 5e+6;

%% Drone physical parameters
% Moment of Inertia (x, y, z)
Ixx = 5e-3;       
Iyy = 5e-3;
Izz = 1e-2;      
m = 0.5;           % Mass in kg
l = 0.2;            % Arm length            
Jr = 3e-5;       % Motor inertia (net)
% Rotor parameters
Kt = 3e-6; % Thrust coefficient
Kd = 1e-7; % Drag coefficient
% Drag coefficients (x, y, z)
K_d_x = 1e-7;         
K_d_y = 1e-7;         
K_d_z = 1e-7;

%% Physical parameters
g = 9.81;           % Gravity

%% Initialization parameters
xyz_in = [0, 0, 0];         % Position
xyz_dot_in = [0, 0, 0];     % Linear velocities
rpy_in = [0, 0, 0];         % Attitude
rpy_dot_in = [0, 0, 0];     % Euler rates