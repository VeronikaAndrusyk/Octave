% Завантаження кольорового зображення
original_image = imread('C:\Users\Asus\Downloads\La7.bmp');

% Завантаження пакету image
pkg load image;

% Додавання імпульсного шуму ('salt & pepper') до початкового зображення
salt_and_pepper_noisy_image = imnoise(original_image, 'salt & pepper');

% Відображення початкового та зашумленого зображень
subplot(1, 2, 1);
imshow(original_image);
title('Початкове зображення');

subplot(1, 2, 2);
imshow(salt_and_pepper_noisy_image);
title('Зашумлене імпульсним шумом зображення');

% Розмір ядра фільтра
filter_size = [3, 3];

% Фільтрація зашумленого зображення усереднюючим фільтром
salt_and_pepper_filtered_image = medfilt2(salt_and_pepper_noisy_image, filter_size);

% Фільтр покращення різкості для зашумленого зображення
sharpened_image = imsharpen(salt_and_pepper_noisy_image);

% Відображення результатів фільтрації
figure;

subplot(1, 3, 1);
imshow(salt_and_pepper_noisy_image);
title('Зашумлене зображення');

subplot(1, 3, 2);
imshow(salt_and_pepper_filtered_image);
title('Фільтрація (усереднюючий)');

subplot(1, 3, 3);
imshow(sharpened_image);
title('Покращення різкості');

