%HW_8 | Part 2: Experimental vs Theoretical Data
%Created by Karan Marwaha 

clear all 
clc

%models figure that compares the experimental data with the theoretically
%expected values of a steel ball that is dropped

%experimental data
time_exp = [.03 .0633 .0967 .13 .1633 .1967 .23 .2633 .2967]; %experimental data [s]
height_exp = [22 21.5 20.5 18.8 17 14.5 12 8 3 ]; %experimental data [in]
hold on %shows series of continous points instead of last point
plot(time_exp, height_exp, 'ro') %plots experimental data 


%theoretical Data
for t=0:.02:.3 %for loop intailizes t at 0 and incrementing by .2 until .3 including it 
    g = 386.4 ; % gravity on earth[in/s^2]
    h = 22 - ((.5) * (g) * (t.^2)) %theoretical data eqaution 
    plot(t, h, 'bo')%plot time vs height of ball
end


xlabel("time[s]") %labels x axis
ylabel("height of steel ball[in]") %labels y axis
title("height of steel ball vs time") %labels title
legend({"experimental", "theoretical"}) %creates lengend to differenate 