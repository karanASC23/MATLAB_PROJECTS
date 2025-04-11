% Project MBTA: Modeling Fare Equity
% This code plots base values of current fares, ridership, and rider
% income across three transit modes: bus, subway, and commuter rail (CR).
% This script includes guidance to calculate the impact of fare changes for
% low income (LI) and not low income (notLI) riders across the three modes.

clear all
clc                             
close all       % closes any existing figures

%% Part 0: Plotting default data

% ----- Data -----
% Arrays correspond to data for [ Bus, Subway, CommuterRail ]

% Average Income, both income groups, for all three modes
avgIncome_LI = [ 22572.20 , 24385.86 , 27413.56 ];
avgIncome_notLI = [ 99573.97 , 113039.05 , 137413.89 ];

% Ridership, both income groups, for all three modes
ridership_LI = [ 61320 , 85280 , 4130 ];
ridership_notLI = [ 84680 , 242720 , 54870 ];

% Current average fare of each mode
baseFare = [ 1.70 , 2.40 , 8.00 ];

% ----- Plotting -----

% Create a vector of the different mode names, to label our plots
modenames = ["Bus",  "Subway", "Commuter Rail"];

figure(1)
    bar( modenames, [ avgIncome_LI / 1000; avgIncome_notLI / 1000 ]');
    title('Average Income');
    legend({'LI', 'not LI'}, 'Location', 'northwest')
    ylabel('USD ($), thousands')

figure(2)
    bar( modenames, [ ridership_LI / 1000 ; ridership_notLI / 1000 ]' );
    title('Ridership');
    legend({'LI', 'not LI'})
    ylabel('Number of Riders, thousands')

figure(3)
    bar( modenames, baseFare );
    title('Fare')
    ylabel('USD ($)')

%% Part 1: Impact Factor, Equal Fare Increase ($0.50)

% ----- Test Values: Fare Increase -----
increaseBus = 0.50;     % 50 cent increase on bus fare
increaseSubway = 0.50;  % 50 cent increase on subway fare
increaseCR = 0.50;      % 50 cent increase on commuter rail fare

fareIncrease = [increaseBus increaseSubway increaseCR]; % make an array of fare increases

% ----- Assumptions: Ridership per family -----

avgTripsPerYear =  260 * 2  % Workdays * 2 trips per day
avgFamilySize =  1.5    % Number of working adults

annualTrips =  avgTripsPerYear * avgFamilySize   % Annual trips PER FAMILY

% ----- Impact Factor Calculations -----

additionalIncomePct_LI =  (fareIncrease * annualTrips) ./ avgIncome_LI %element math for martix fareIncrease and avgIncome_LI
additionalIncomePct_notLI = (fareIncrease * annualTrips) ./ avgIncome_notLI %element math for martix fareIncrease and avgIncome_LI

impact_LI =  additionalIncomePct_LI .* ridership_LI
impact_notLI = additionalIncomePct_notLI .* ridership_notLI

impactSystem = sum(impact_LI) / sum(impact_notLI)

fprintf('Bus fare increase: $%.2f\n', increaseBus);
fprintf('Subway fare increase: $%.2f\n', increaseSubway);
fprintf('Commuter Rail fare increase: $%.2f\n', increaseCR);
fprintf('The system impact factor is %.2f.\n', impactSystem);

%% Part 2: Impact Factor, Percentage of Income Fare Increase (10%)

% In this section, follow the same format as Part 2 to calculate the impact
% factor when fare is increased by 10% of the base fare.
% So the bus will increase $0.17 (10% * 1.70), subway will increase $0.24
% (10% * 2.40) and the commuter rail will increase $0.80 (10% * 8).

% You can and should (thoughtfully!) copy and paste code from Part 1.

% ----- Test Values: Fare Increase -----

% add your code here

% ----- Impact Factor Calculations -----

% add your code here

%% Part 3: EXTENSION! Impact Factor, determine equitable option

% In this section, experiment with different fare values for each mode in
% an attempt to get an impact factor very close to 1.

% This indicates that the impact on LI and notLI groups is the same!

% ----- Test Values: Fare Increase -----

% add your code here

% ----- Impact Factor Calculations -----

% add your code here


%% SUPER EXTENSION! Revenue Increase

% For any of the fare increases above, calculate the additional revenue for
% the MBTA.

