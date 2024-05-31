%x=a*t*cos9t)
%a*t*sin(t)
t = linspace(0, 10*pi, 1000);
a = -3; % Параметр
x = a * t .* cos(t);
y = a * t .* sin(t);
plot(x, y);
title('Равлик Паскаля');

