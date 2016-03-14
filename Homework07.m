A = imread('C:\Users\Joeky\Desktop\NTUST\Matlab\Day2\Penguins1.bmp');
B = imread('C:\Users\Joeky\Desktop\NTUST\Matlab\Day2\Penguins2.bmp');
C = imread('C:\Users\Joeky\Desktop\NTUST\Matlab\Day2\Penguins3.bmp');
D = imread('C:\Users\Joeky\Desktop\NTUST\Matlab\Day2\Penguins4.bmp');
height = size(A);
chart = zeros(height(1), height(2), 3);
for y = 1 : 1 : height(1)
	for x = 1 : 1 : height(2)
		for color = 1 : 1 : 3
			tmp = zeros(4);
			tmp(1) = A(y, x, color);
			tmp(2) = B(y, x, color);
			tmp(3) = C(y, x, color);
			tmp(4) = D(y, x, color);
			tmp = sort(tmp);
			A(y, x, color) = tmp(2);
		end
    end
end

imshow(A);