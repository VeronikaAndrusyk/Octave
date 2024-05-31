original_image = imread('C:\Users\Asus\Downloads\La7.bmp');

pkg load image;

gaussian_noisy_image = imnoise(original_image, 'gaussian');

subplot(1, 2, 1);
imshow(original_image);
title('Початкове зображення');

subplot(1, 2, 2);
imshow(gaussian_noisy_image);
title('Зашумлене гаусівським шумом зображення');

% Розмір ядра фільтра
filter_size = 3;


gaussian_filtered_image = imfilter(gaussian_noisy_image, fspecial('average', [filter_size, filter_size]));


sharpened_image = imsharpen(gaussian_noisy_image);

% Відображення результатів фільтрації
figure;

subplot(1, 3, 1);
imshow(gaussian_noisy_image);
title('Зашумлене зображення');

subplot(1, 3, 2);
imshow(gaussian_filtered_image);
title('Фільтрація (усереднюючий)');

subplot(1, 3, 3);
imshow(sharpened_image);
title('Покращення різкості');

