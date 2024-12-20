dutycycle = linspace(10,100,10);
speed = [0 320 563 823 1075 1320 1538 1743 1970 2200];
ideal = dutycycle*22;

plot(dutycycle, speed, '-ob', 'DisplayName',"real data");
hold on;
plot(dutycycle,ideal, '-or', 'DisplayName',"theory");
legend;
hold off;
title("Dutycycle/Speed graph");
xlabel('dutycycle(%)');
ylabel('Speed(RPM)');
grid on;