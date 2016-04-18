Lena = imread('Lena.jpg');
LenaGray = rgb2gray(Lena);
LenaGray2 = rgb2gray(Lena);
LenaGray0 = rgb2gray(Lena);

d0 = [[0, 0, 7.0/16];[3.0/16, 5.0/16, 1.0/16]];
d1 = [[0, 0, 0, 7.0/48.0, 5.0/48]; [3.0/48, 5.0/48, 7.0/48, 5.0/48, 3.0/48]; [1.0/48, 3.0/48, 5.0/48, 3.0/48, 1.0/48]];
d2 = [[0, 0, 0, 8.0/42.0, 4.0/42]; [2.0/42, 4.0/42, 8.0/42, 4.0/42, 2.0/42]; [1.0/42, 2.0/42, 4.0/42, 2.0/42, 1.0/42]];


height = size(LenaGray);
for y = 1 : 1 : height(1)
	for x = 1 : 1 : height(2)
		e0 = 0.0;
		e1 = 0.0;
		e2 = 0.0;
		if LenaGray0(y, x) < 128
			e0 = double(LenaGray0(y, x));
		else
			e0 = double(LenaGray0(y, x)) - 255.0;
		end
		if LenaGray(y, x) < 128
			e1 = double(LenaGray(y, x));
		else
			e1 = double(LenaGray(y, x)) - 255.0;
		end
		if LenaGray2(y, x) < 128
			e2 = double(LenaGray2(y, x));
		else
			e2 = double(LenaGray2(y, x)) - 255.0;
		end

		for b = 0 : 1 : 1
			for a = -1 : 1 : 1
				if y + b <= height(1) && x +a <= height(2) && y + b > 0 && x + a > 0
					LenaGray0(y+b, x+a) = LenaGray0(y+b, x+a)+e0*d0(b+1, a+2);
				end
			end
		end

		for b = 0 : 1 : 2	
			for a = -2 : 1 : 2
				if y + b <= height(1) && x +a <= height(2) && y + b > 0 && x + a > 0
					LenaGray(y+b, x+a) = LenaGray(y+b, x+a)+e1*d1(b+1, a+3);
					LenaGray2(y+b, x+a) = LenaGray2(y+b, x+a)+e2*d2(b+1, a+3);
				end
			end
		end

	end
end
for y = 1 : 1 : height(1)
	for x = 1 : 1 : height(2)
		if LenaGray0(y, x) < 128
			LenaGray0(y, x) = 0;
		else
			LenaGray0(y, x) = 255;
		end
		if LenaGray(y, x) < 128
			LenaGray(y, x) = 0;
		else
			LenaGray(y, x) = 255;
		end
		if LenaGray2(y, x) < 128
			LenaGray2(y, x) = 0;
		else
			LenaGray2(y, x) = 255;
		end
	end
end
subplot(1, 3, 1); imshow(LenaGray0), title('16');
subplot(1, 3, 2); imshow(LenaGray), title('48');
subplot(1, 3, 3); imshow(LenaGray2), title('42');
