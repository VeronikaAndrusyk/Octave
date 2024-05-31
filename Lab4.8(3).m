t = linspace(0, 2*pi, 100);
a = 1; % Радіус
x = a * (2 * cos(t) - cos(2 * t));
y = a * (2 * sin(t) - sin(2 * t));
plot(x, y);
title('Кардіоїда');

