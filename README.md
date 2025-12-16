# quadrotor_matlab_testbench

This repository contains a quick-to-use testbench to validate control and path planning algorithms.

1. _parameters.m_: Run this file in MATLAB to load parameters in the workspace. Specifies quadrotor dynamic params, controller gains, saturation limits and other physical params.
2. _quadrotor_dynamics_model.slx_: Simulink model of entire nonlinear 6-DOF math model of quadrotor + mixing algorithm for '+' configured quadrotor. Has a modular structure for easy interpretation and tweaking. The inputs x_c, y_c, z_c and psi_c can be modified to be specified constant or taken from a guidance/path planning algorithm. Control algorithm is a cascaded PID controller with superficially similar architecture with PX4.
3. _state_visualization_app.mlapp_: MATLAB app which has the button to simply run the simulation from the app GUI and visualize in a single GUI window, all the state variables against the commanded variables, as well as control inputs, along with a 3D plot of trajectory traced. Red plot is for traced values while blue plot is for commanded values.

Clone this repo and run the _params.m_ file first from its parent directory, and then the MATLAB app.
