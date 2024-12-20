A_motor = [2.91 2.92 2.91 2.90 2.90 2.90 2.90 2.89 2.88 2.89 ];
Torque = linspace(0.02, 0.2, 10);

plot(Torque, A_motor, '.');
title("Torque setpoint and motor current graph at pure Motor-load");
xlabel('Torque(Nm)');
ylabel('Current(A)');
xlim([0.02,0.2])
ylim([0,5])
grid on;