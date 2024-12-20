A_motor = [2.7 2.8 3.2 4.07 4.1 4.2 4.0 4.1 4.3 4.5 ];
Torque = linspace(0.02, 0.2, 10);

plot(Torque, A_motor, '.');
title("Torque setpoint and motor current graph at Dynamic Torque");
xlabel('Torque(Nm)');
ylabel('Current(A)');
xlim([0.02,0.2])
ylim([0,5])
grid on;