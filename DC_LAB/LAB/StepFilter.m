Fs = 100;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 501;             % Length of signal

value = out.Torque.data;
time = out.Torque.time;

y = fft(value);

plot(Fs/L*(-L/2:L/2-1),abs(fftshift(y)),"LineWidth",3)
title("fft Spectrum in the Positive and Negative Frequencies")
xlabel("f (Hz)")
ylabel("|fft(X)|")
