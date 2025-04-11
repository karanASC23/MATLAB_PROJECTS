%HW 10
%Created by Karan Marwaha

num_of_trips = 1000;

% Simulatation of Bus Trip Times
bus_wait = rand(num_of_trips,1) * 10;  % Uniform [0,10]
bus_ride1 = normrnd(20, 4, num_of_trips, 1);  % Normal (20,4)
bus_transfer = rand(num_of_trips,1) * 12;  % Uniform [0,12]
bus_ride2 = normrnd(18, 4, num_of_trips, 1);  % Normal (18,4)
bus_total = bus_wait + bus_ride1 + bus_transfer + bus_ride2;

% Simulatatation of Subway Trip Times
subway_wait = rand(num_of_trips,1) * 8;  % Uniform [0,8]
subway_ride1 = normrnd(12, 2, num_of_trips, 1);  % Normal (12,2)
subway_transfer = rand(num_of_trips,1) * 10;  % Uniform [0,10]
subway_ride2 = normrnd(10, 2, num_of_trips, 1);  % Normal (10,2)
subway_total = subway_wait + subway_ride1 + subway_transfer + subway_ride2;

% Simulatation of Car Trip Times
car_drive = normrnd(25, 10, num_of_trips, 1);  % Normal (25,10)
car_parking = rand(num_of_trips,1) * 6 + 2;  % Uniform [2,8]
car_total = car_drive + car_parking;



%figure for Bus
figure;
subplot(3,1,1);
histogram(bus_total, 30);
title('Bus Travel Time Distribution');
xlabel('Total Trip Time [m]');
ylabel('Frequency');

%figure for Subway
subplot(3,1,2);
histogram(subway_total, 30);
title('Subway Travel Time Distribution');
xlabel('Total Trip Time [m]');
ylabel('Frequency');

%figure for car
subplot(3,1,3);
histogram(car_total, 30);
title('Car Travel Time Distribution');
xlabel('Total Trip Time [m]');
ylabel('Frequency');

bus_mean = mean(bus_total);
bus_std = std(bus_total);
bus_range = [min(bus_total), max(bus_total)];

subway_mean = mean(subway_total);
subway_std = std(subway_total);
subway_range = [min(subway_total), max(subway_total)];

car_mean = mean(car_total);
car_std = std(car_total);
car_range = [min(car_total), max(car_total)];