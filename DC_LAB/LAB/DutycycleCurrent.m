dutycycle = linspace(10,100,10);
thosand = [0.22 0.24 0.26 0.27 0.27 0.27 0.28 0.28 0.28 0.28];
twenty =  [0.22 0.22 0.23 0.24 0.25 0.25 0.26 0.27 0.28 0.28];

plot(dutycycle, thosand, '-or','DisplayName','1000Hz');
hold on
plot(dutycycle, twenty, '-ob', 'DisplayName','20000Hz');
legend
hold off
title("Dutycycle/Current graph");
xlabel('dutycycle(%)');
ylabel('Current(A)');
ylim([0,0.3])
grid on;