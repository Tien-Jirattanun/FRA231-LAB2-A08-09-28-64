A_Noload = [0.96 0.97 0.97 0.97 0.98 0.98 0.97 0.98 0.98 0.98 ];
Torque = linspace(0.02, 0.2, 10);

plot(Torque, A_Noload, '.');
title("Torque setpoint and motor current graph at No-load");
xlabel('Torque(Nm)');
ylabel('Current(A)');
xlim([0.02,0.2])
ylim([0,5])
grid on;