%x=a*cos63(t)
%y= a sin^3(t), де a це радіус
t = linspace(0, 2*pi, 100);
a = 1; % Радіус
x = a * cos(t).^3;
y = a * sin(t).^3;
plot(x, y);
title('Астроїд');

