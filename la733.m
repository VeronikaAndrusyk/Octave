original_image = imread('C:\Users\Asus\Downloads\La7.bmp');

pkg load image;

poisson_noisy_image = imnoise(original_image, 'poisson');

subplot(1, 2, 1);
imshow(original_image);
title('Початкове зображення');

subplot(1, 2, 2);
imshow(poisson_noisy_image);
title('Зашумлене пуасонівським шумом зображення');

filter_size = 3;

poisson_filtered_image = imfilter(poisson_noisy_image, fspecial('average', [filter_size, filter_size]));

sharpened_image = imsharpen(poisson_noisy_image);

figure;

subplot(1, 3, 1);
imshow(poisson_noisy_image);
title('Зашумлене зображення');

subplot(1, 3, 2);
imshow(poisson_filtered_image);
title('Фільтрація (усереднюючий)');

subplot(1, 3, 3);
imshow(sharpened_image);
title('Покращення різкості');

