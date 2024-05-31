data = [1 1 2 1 2 3 1 2 3 4 1 2 3 4 5];

% гістограма
figure;
hist(data, max(data) - min(data) + 1);
title('Гістограма кількості автомобілів');
xlabel('Кількість автомобілів');
ylabel('Частота');

% cтовпчикова діаграма
figure;
bar(unique(data), histc(data, unique(data)));
title('Стовпчикова діаграма кількості автомобілів');
xlabel('Кількість автомобілів');
ylabel('Частота');

