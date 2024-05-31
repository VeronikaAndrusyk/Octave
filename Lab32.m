vector = input('Введіть вектор: ');
input_vector = vector;

% Знаходжу два найбільших елемента та їх індекси
[sorted_values, sorted_indices] = sort(input_vector, 'descend');
disp ('sorted_indices')

max_index_1 = sorted_indices(1);
max_index_2 = sorted_indices(2);

% Міняю місцями два найбільших елемента
temp = input_vector(max_index_1);
input_vector(max_index_1) = input_vector(max_index_2);
input_vector(max_index_2) = temp;

% Замінюю рівні нулю елементи на суму від'ємних елементів
zero_indices = find(input_vector == 0);
negative_values = input_vector(input_vector < 0);
negative_sum = sum(negative_values);
input_vector(zero_indices) = negative_sum;

fprintf('Початковий вектор: %s\n', mat2str(vector));
fprintf('Вектор після операцій: %s\n', mat2str(input_vector));

