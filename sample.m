% --- 1. Define the individual dynamic models (NOW MORE REALISTIC) ---
plant_mv = tf(1, [0.05 1]);      % Dynamic model for the Manipulated Variable (MV).
% A disturbance (e.g., load change) now has a realistic effect on the output.
plant_md = tf(0.4, [0.12 1]);    % Zero-gain model was replaced.

% --- 2. Combine the models into one plant ---
plant = [plant_mv, plant_md]; % 1 output, 2 inputs (simplified for clarity)
plant.InputGroup.ManipulatedVariables = 1;
plant.InputGroup.MeasuredDisturbances = 2;

% --- 3. Define Controller Sample Time and Horizons ---
Ts = 0.01; % seconds
p = 200;   % Prediction Horizon (e.g., 2 seconds)
m = 10;    % Control Horizon

% --- 4. Create the MPC Controller Object with Horizons ---
mpc1 = mpc(plant, Ts, p, m);

% --- 5. TUNE THE CONTROLLER WEIGHTS for better performance ---
% Prioritize output tracking over minimizing control effort.
mpc1.Weights.OutputVariables = 1;
mpc1.Weights.ManipulatedVariables = 0.1;
mpc1.Weights.ManipulatedVariablesRate = 0.05; % Penalize rapid changes

% --- 6. Set COMPREHENSIVE Constraints ---
mpc1.MV.Min = 0;
mpc1.MV.Max = 100;    % ADDED: Maximum limit on the MV.
mpc1.MV.RateMax = 20; % ADDED: Max change per second is 20 units.
mpc1.OV.Max = 150;    % ADDED: Constraint on the plant output.

disp('MPC controller "mpc1" has been created with a realistic model, tuning, and constraints.');