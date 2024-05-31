original_image = imread('C:\Users\Asus\Downloads\La7.bmp');

%  відтінки сірого
gray_image = rgb2gray(original_image);

threshold_gray_to_binary = 0.3; % поріг з напівтонового в двохградаційне

% Перетворення у двоградаційне зображення
binary_image = gray_image < threshold_gray_to_binary;
figure;

% Початкове кольорове зображення
subplot(2, 2, 1);
imshow(original_image);
title('Початкове кольорове зображення');

% Напівтонове зображення
subplot(2, 2, 2);
imshow(gray_image);
title('Напівтонове зображення');

% Двоградаційне зображення
subplot(2, 2, 3);
imshow(binary_image);
title('Двоградаційне зображення');


imwrite(original_image, 'C:\Users\Asus\Downloads\La7_color.bmp', 'bmp');
imwrite(gray_image, 'C:\Users\Asus\Downloads\La7_gray.bmp', 'bmp');
imwrite(binary_image, 'C:\Users\Asus\Downloads\La7_binary.bmp', 'bmp');



