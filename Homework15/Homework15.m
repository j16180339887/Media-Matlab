Lena = imread('Lena.jpg');
LenaGray = rgb2gray(Lena);

subplot(2, 3, 1); imshow(plus128(LenaGray)), title('plus128');
subplot(2, 3, 2); imshow(minus128(LenaGray)), title('minus128');
subplot(2, 3, 3); imshow(div2(LenaGray)), title('div2');
subplot(2, 3, 4); imshow(mul2(LenaGray)), title('mul2');
subplot(2, 3, 5); imshow(div2plus128(LenaGray)), title('div2plus128');
