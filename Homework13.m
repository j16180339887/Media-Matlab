Lena = imread('Lena.jpg');
LenaGray = rgb2gray(Lena);
LenaGray2 = rgb2gray(Lena);

q1 = LenaGray / 85;
q2 = LenaGray2 / 37;

d1 = [[0, 56]; [84, 28]];
d2 = [[0, 24]; [36, 12]];

height = size(LenaGray);
for y = 1 : 1 : height(1)
	for x = 1 : 1 : height(2)
		if LenaGray(y, x) - 85 * q1(y, x) > d1(mod(y, 2) + 1, mod(x, 2) + 1)
			LenaGray(y, x) = q1(y, x) + 1;
		else
			LenaGray(y, x) = q1(y, x) + 0;
		end
		if LenaGray2(y, x) - 37 * q2(y, x) > d2(mod(y, 2) + 1, mod(x, 2) + 1)
			LenaGray2(y, x) = q2(y, x) + 1;
		else
			LenaGray2(y, x) = q2(y, x) + 0;
		end
	end
end
subplot(1, 2, 1); imshow(LenaGray*85), title('2x2');
subplot(1, 2, 2); imshow(LenaGray2*37), title('4x4');
