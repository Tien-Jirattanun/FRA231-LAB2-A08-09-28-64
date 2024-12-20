% Torque speed curve
% Define the coordinates of the two points
x = [0, 0.2];  % x-coordinates
y = [0.98, 5];  % y-coordinates

% Interpolate to find the speed at a specific torque (0.0614615 Nm)
specificTorque = 0.0614615;  % The torque value at which you want to find the speed
speedAtSpecificTorque = interp1(x, y, specificTorque, 'linear');  % Linear interpolation

% Display the result
disp(['Speed at Torque ', num2str(specificTorque), ' Nm: ', num2str(speedAtSpecificTorque), ' Rad/s']);

% Plot the points and the line connecting them
figure;
plot(x, y, '-b');  % '-b' plots a blue line connecting the points

% Add labels and title
xlabel('Torque(Nm)');
ylabel('Current(A)');
title('Torque/Current curve');

% Display the plot
grid on;


% Add a marker at the specific torque point and label it as "Rated"
hold on;
plot(specificTorque, speedAtSpecificTorque, 'bo', 'MarkerFaceColor', 'b');  % Mark the specific point

