Torque = linspace(0,0.2,1000);
P = -(230/0.2)*((Torque).^2) + 230*Torque;

% Find the Power at Torque = 0.0614 Nm
specificTorque = 0.0614615;  % Desired torque value
powerAtSpecificTorque = -(230/0.2)*(specificTorque^2) + 230*specificTorque;

% Display the result
disp(['Power at Torque ', num2str(specificTorque), ' Nm: ', num2str(powerAtSpecificTorque), ' W']);

% Plot the Power curve
figure;
plot(Torque, P, '-g');
xlabel('Torque (Nm)');
ylabel('Power (W)');
title('Power Curve');
grid on;

% Add a marker at the specific torque point
hold on;
plot(specificTorque, powerAtSpecificTorque, 'bo', 'MarkerFaceColor', 'b');  % Mark the specific point