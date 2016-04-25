Lena = imread('C:\Users\Joeky\Desktop\NTUST\Matlab\Day3\Lena.jpg');
LenaGray = rgb2gray(Lena);
LenaGray2 = rgb2gray(Lena);

d1 = [[0, 128]; [192, 64]];
d2 = [[0, 128, 32, 160]; [192, 64, 224, 96]; [48, 176, 16, 144]; [240, 112, 208, 80]];

height = size(LenaGray)
for y = 1 : 1 : height(1)
	for x = 1 : 1 : height(2)

		if LenaGray(y, x) > d1(mod(y, 2) + 1, mod(x, 2) + 1)
			LenaGray(y, x) = 255;
		else
			LenaGray(y, x) = 0;
		end
		if LenaGray2(y, x) > d2(mod(y, 4) + 1, mod(x, 4) + 1)
			LenaGray2(y, x) = 255;
		else
			LenaGray2(y, x) = 0;
		end
	end
end
subplot(1, 2, 1); imshow(LenaGray);
subplot(1, 2, 2); imshow(LenaGray2);
