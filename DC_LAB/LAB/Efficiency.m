Torque = linspace(0, 0.2, 1000);  % Torque from 0 to 0.2 Nm
% Efficiency formula
n = (-(230/0.2)*((Torque).^2) + 230*Torque) ./ (((5-0.98)/0.2)*Torque*12 + 0.98*12)*100;

% Find the maximum efficiency and its corresponding torque
[maxEfficiency, idx] = max(n);  % maxEfficiency is the highest value, idx is its index
ratedTorque = Torque(idx);  % Find the corresponding torque

% Plot the efficiency curve
figure;
plot(Torque, n, '-black');  
hold on;  % Keep the current plot
plot(ratedTorque, maxEfficiency, 'bo', 'MarkerFaceColor', 'b');  % Mark the rated point
xlabel('Torque (Nm)');
ylabel('Efficiency (%)'); 
title('Efficiency Curve');
grid on;

% Display the rated point
disp(['Rated Torque: ', num2str(ratedTorque), ' Nm']);
disp(['Maximum Efficiency: ', num2str(maxEfficiency), ' %']);