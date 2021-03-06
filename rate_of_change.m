filename = 'Hist_2.6model8.5.csv'
file = csvread(filename)
disp(file)

a = file(:,1)
b = file(:,2)
c = file(:,3)

for i = 1:size(b)
    b(i) = (b(i)-14.9729071978214)
end

for i = 1:size(a)
    a(i) = (a(i)-14.5953495901526)
end

for i = 1:size(b)
    d(i) = 0
end

plot(c,b)
hold on;
plot(c,a)
hold on;
P = plot(c,d)
set(P,'Color','black')
title('Change in Sea Ice Concentration Under RCP 2.6 & 8.5 (Relative to 2006 Baseline)')
legend('RCP 2.6','RCP 8.5')
        