data = [
    1 1 2 1 2 3 1 2 3 4 1 2 3 4 5;
    1 2 1 2 3 1 2 3 4 1 2 3 4 5 1;
    2 1 2 3 1 2 3 4 1 2 3 4 5 1 2
];

% pозмірність даних
[num_days, num_intervals] = size(data);

% у вигляді 2D графіку
figure;
for i = 1:num_days
    subplot(num_days, 1, i);
    bar(data(i, :));
    title(['День ', num2str(i)]);
    xlabel('Інтервал');
    ylabel('Кількість автомобілів');
end

% у вигляді 3D графіку
figure;
surf(data);
title('Кількість автомобілів, в`їзджаючих у двір університету');
xlabel('Інтервал');
ylabel('День');
zlabel('Кількість автомобілів');
