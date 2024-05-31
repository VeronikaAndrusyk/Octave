u = [0:0.05:pi]';
v = [0:0.05:pi];
x = cos(u) * cos(v);
y = cos(u) * sin(v);
z = sin(u) * ones(size(v));

% Побудова графіків у відповідних підвікнах
figure;

% Графік функції z(x, y)
subplot(2, 2, 1);
plot3(x, y, z, 'b');
title('Графік функції z(x, y)');
grid on;

% Лінійчатий графік
subplot(2, 2, 2);
lines = 10; % Кількість ліній
contour3(x, y, z, lines, 'k');
title('Лінійчатий графік');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

% Каркасна поверхня та контурний графік
subplot(2, 2, 3);
surf(x, y, z);
title('Каркасна поверхня');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

subplot(2, 2, 4);
contour(x, y, z, 'LineColor', 'r');
title('Контурний графік');
xlabel('x');
ylabel('y');
grid on;

% Плавно залита кольором поверхня
figure;
surf(x, y, z, 'FaceColor', 'interp', 'EdgeColor', 'none');
title('Плавно залита кольором поверхня');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

