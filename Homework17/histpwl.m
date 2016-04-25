function outImage = histpwl(image, a, b)
	imageGray = rgb2gray(image);
	iter = 2;
	x = linspace(0, 255, 256);
	y = linspace(0, 255, 256);
	for xi = 1:1:256
		if a(iter) * 256.0 < xi
			iter = iter + 1;
		end
		y(xi) = ((b(iter) * 256.0 - b(iter-1) * 256.0)/(a(iter) * 256.0 - a(iter - 1) * 256.0))*(x(xi) - a(iter-1) * 256.0) + b(iter-1) * 256.0;
	end
	figure, plot(x, y);
	height = size(imageGray);
	for yy = 1 : 1 : height(1)
		for xx = 1 : 1 : height(2)
			imageGray(yy, xx) = y(imageGray(yy, xx));
		end
	end
	outImage = imageGray;
end