t = 0:0.3:5;

y1 = 10 * exp(-2 * t);

%  errorbar
errorbar(t, y1, zeros(size(t)), 'k^', 'MarkerFaceColor', 'k', 'MarkerSize', 5, 'LineWidth', 0.5);
title('Графік функції y_1(t)');
grid on;

