% Extract the Data and Time from the signal
signal_data = data{5}.Values.Data;  % The actual data values
signal_time = data{5}.Values.Time;  % The corresponding time values

% Define the time range for filtering
time_range_min = 3400;
time_range_max = 4200;

% Find the indices where the time is within the range [3400, 4200]
indices = signal_time >= time_range_min & signal_time <= time_range_max;

% Filter the data and time based on the indices
filtered_time = signal_time(indices);
filtered_data = signal_data(indices);

% FFT
% Perform the Fast Fourier Transform (FFT) on the signal x
y = fft(filtered_data);
% Calculate the sampling frequency
fs = 1/(0.01);
% Create a frequency array corresponding to the FFT result
f = (0:length(y)-1)*fs/length(y);
plot(f(1:round(end/2,0)),abs(y(1:round(end/2,0))))
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('Magnitude')

