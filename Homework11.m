Lena = imread('C:\Users\Joeky\Desktop\NTUST\Matlab\Day3\Lena.jpg');
LenaGray = rgb2gray(Lena);

Lena128 = uint8(LenaGray - mod(LenaGray, 002));
Lena064 = uint8(LenaGray - mod(LenaGray, 004));
Lena032 = uint8(LenaGray - mod(LenaGray, 008));
Lena016 = uint8(LenaGray - mod(LenaGray, 016));
Lena008 = uint8(LenaGray - mod(LenaGray, 032));
Lena004 = uint8(LenaGray - mod(LenaGray, 064));
Lena002 = uint8(LenaGray - mod(LenaGray, 128));


subplot(3,3,1), imshow(Lena128), title('128');
subplot(3,3,2), imshow(Lena064), title('64');
subplot(3,3,3), imshow(Lena032), title('32');
subplot(3,3,4), imshow(Lena016), title('16');
subplot(3,3,5), imshow(Lena008), title('8');
subplot(3,3,6), imshow(Lena004), title('4');
subplot(3,3,7), imshow(Lena002), title('2');