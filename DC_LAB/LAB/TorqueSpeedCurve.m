% Torque-speed curve
% Define the coordinates of the two points
x = [0, 0.2];  % x-coordinates (torque values)
y = [230, 0];  % y-coordinates (speed values)

% Interpolate to find the speed at a specific torque (0.0614615 Nm)
specificTorque = 0.0614615;  % The torque value at which you want to find the speed
speedAtSpecificTorque = interp1(x, y, specificTorque, 'linear');  % Linear interpolation

% Display the result
disp(['Speed at Torque ', num2str(specificTorque), ' Nm: ', num2str(speedAtSpecificTorque), ' Rad/s']);

% Plot the Torque-speed curve
figure;
plot(x, y, '-r');  % Plot the line connecting the points
xlabel('Torque (Nm)');
ylabel('Speed (Rad/s)');
title('Torque/Speed Curve');
grid on;

% Add a marker at the specific torque point
hold on;
plot(specificTorque, speedAtSpecificTorque, 'bo', 'MarkerFaceColor', 'b');  % Mark the specific point
