% Efficiency Curve
Torque1 = linspace(0, 0.2, 1000);  % Torque from 0 to 0.2 Nm
n = (-(230/0.2)*((Torque1).^2) + 230*Torque1) ./ (((5-0.98)/0.2)*Torque1*12 + 0.98*12)*100;

% Find the maximum efficiency and its corresponding torque
[maxEfficiency, idx] = max(n);  % maxEfficiency is the highest value, idx is its index
ratedTorque = Torque1(idx);  % Find the corresponding torque

% Power Curve
Torque2 = linspace(0, 0.2, 1000);  % Torque from 0 to 0.2 Nm
P = -(230/0.2)*((Torque2).^2) + 230*Torque2;

% Find the Power at a specific Torque = 0.0614 Nm
specificTorque = 0.0614615;  % Desired torque value
powerAtSpecificTorque = -(230/0.2)*(specificTorque^2) + 230*specificTorque;

% Torque-Current Curve
xTorqueCurrent = [0, 0.2];  % Torque range
yCurrent = [0.98, 5];  % Current range
currentAtSpecificTorque = interp1(xTorqueCurrent, yCurrent, specificTorque, 'linear');  % Interpolation for current

% Torque-Speed Curve
xTorqueSpeed = [0, 0.2];  % Torque range
ySpeed = [230, 0];  % Speed range
speedAtSpecificTorque = interp1(xTorqueSpeed, ySpeed, specificTorque, 'linear');  % Interpolation for speed

% Combined Plot
figure;
hold on;

% Plot Efficiency Curve
plot(Torque1, n, '-black', 'LineWidth', 1.5, 'DisplayName', 'Efficiency (%)');
plot(ratedTorque, maxEfficiency, 'bo', 'MarkerFaceColor', 'b', 'DisplayName', 'Rated Point (Efficiency)');

% Plot Power Curve
plot(Torque2, P, '-g', 'LineWidth', 1.5, 'DisplayName', 'Power (W)');
plot(specificTorque, powerAtSpecificTorque, 'ro', 'MarkerFaceColor', 'r', 'DisplayName', 'Specific Point (Power)');

% Plot Torque-Current Curve
plot(xTorqueCurrent, yCurrent, '-b', 'LineWidth', 1.5, 'DisplayName', 'Torque/Current (A)');
plot(specificTorque, currentAtSpecificTorque, 'mo', 'MarkerFaceColor', 'm', 'DisplayName', 'Specific Point (Current)');

% Plot Torque-Speed Curve
plot(xTorqueSpeed, ySpeed, '-r', 'LineWidth', 1.5, 'DisplayName', 'Torque/Speed (Rad/s)');
plot(specificTorque, speedAtSpecificTorque, 'co', 'MarkerFaceColor', 'c', 'DisplayName', 'Specific Point (Speed)');

% Configure Labels, Title, and Legend
xlabel('Torque (Nm)');
ylabel('Characteristics');
title('DC Motor Characteristics');
grid on;
legend('Location', 'Best');

% Display Results
disp(['Rated Torque: ', num2str(ratedTorque), ' Nm']);
disp(['Maximum Efficiency: ', num2str(maxEfficiency), ' %']);
disp(['Power at Torque ', num2str(specificTorque), ' Nm: ', num2str(powerAtSpecificTorque), ' W']);
disp(['Current at Torque ', num2str(specificTorque), ' Nm: ', num2str(currentAtSpecificTorque), ' A']);
disp(['Speed at Torque ', num2str(specificTorque), ' Nm: ', num2str(speedAtSpecificTorque), ' Rad/s']);
