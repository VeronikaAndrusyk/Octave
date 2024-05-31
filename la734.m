% Завантаження кольорового зображення
original_image = imread('C:\Users\Asus\Downloads\La7.bmp');

% Завантаження пакету image
pkg load image;

% Додавання мультиплікативного шуму до початкового зображення
speckle_noisy_image = imnoise(original_image, 'speckle');

% Відображення початкового та зашумленого зображень
subplot(1, 2, 1);
imshow(original_image);
title('Початкове зображення');

subplot(1, 2, 2);
imshow(speckle_noisy_image);
title('Зашумлене мультиплікативним шумом зображення');

% Розмір ядра фільтрації
filter_size = 3;

% Фільтрація зашумленого зображення усереднюючим фільтром
speckle_filtered_image = imfilter(speckle_noisy_image, fspecial('average', [filter_size, filter_size]));

% Фільтр покращення різкості для зашумленого зображення
sharpened_image = imsharpen(speckle_noisy_image);

% Відображення результатів фільтрації
figure;

subplot(1, 3, 1);
imshow(speckle_noisy_image);
title('Зашумлене зображення');

subplot(1, 3, 2);
imshow(speckle_filtered_image);
title('Фільтрація (усереднюючий)');

subplot(1, 3, 3);
imshow(sharpened_image);
title('Покращення різкості');

