clear all 
clc

Boston = 100
Cambridge = 100

for i=1:30
    boston_new = (Boston - round(.05 * Boston)) + round(.03 * Cambridge)
    cambridge_new = (Cambridge + round(.05 * Boston)) - round(.03 * Cambridge)
    Boston = boston_new
    Cambridge = cambridge_new
    hold on
    plot(Boston, i, 'ro')
    plot(Cambridge,i,'>' )
end
