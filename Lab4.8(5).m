%r=a*T
theta = linspace(0, 10*pi, 1000);
a = -3; % Параметр
r = a * theta;
x = r .* cos(theta);
y = r .* sin(theta);
plot(x, y);
title('Спіраль Архімеда');

