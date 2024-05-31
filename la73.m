original_image = imread('C:\Users\Asus\Downloads\La7.bmp');
pkg load image;

gaussian_noisy_image = imnoise(original_image, 'gaussian');

salt_and_pepper_noisy_image = imnoise(original_image, 'salt & pepper');

poisson_noisy_image = imnoise(original_image, 'poisson');

speckle_noisy_image = imnoise(original_image, 'speckle');

figure;

% Початкове зображення
subplot(2, 4, 1);
imshow(original_image);
title('Початкове зображення');

% Гаусівський шум
subplot(2, 4, 2);
imshow(gaussian_noisy_image);
title('Гаусівський шум');

% Імпульсний шум
subplot(2, 4, 3);
imshow(salt_and_pepper_noisy_image);
title('Імпульсний шум');

% Пуасонівський шум
subplot(2, 4, 5);
imshow(poisson_noisy_image);
title('Пуасонівський шум');

% Мультиплікативний шум
subplot(2, 4, 6);
imshow(speckle_noisy_image);
title('Мультиплікативний шум');



