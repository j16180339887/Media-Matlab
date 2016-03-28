Lena = imread('C:\Users\Joeky\Desktop\NTUST\Matlab\Day3\Lena.jpg');
LenaGray = rgb2gray(Lena);

Lena512 = LenaGray;
Lena256 = Lena512;
Lena128 = Lena512;
Lena064 = Lena512;
Lena032 = Lena512;
Lena016 = Lena512;
Lena008 = Lena512;

height = size(LenaGray);
for y = 1 : 1 : height(1)
	for x = 1 : 1 : height(2)
        BlockX = x;
        BlockY = y;
        
        BlockX = int16(BlockX / 2);
        BlockY = int16(BlockY / 2);
		Lena256(y, x) = Lena512(BlockY * 2 - 1, BlockX * 2 - 1);
        BlockX = int16(BlockX / 2);
        BlockY = int16(BlockY / 2);
        Lena128(y, x) = Lena512(BlockY * 4 - 1, BlockX * 4 - 1);
        BlockX = int16(BlockX / 2);
        BlockY = int16(BlockY / 2);
        Lena064(y, x) = Lena512(BlockY * 8 - 1, BlockX * 8 - 1);
        BlockX = int16(BlockX / 2);
        BlockY = int16(BlockY / 2);
        Lena032(y, x) = Lena512(BlockY * 16 - 1, BlockX * 16 - 1);
        BlockX = int16(BlockX / 2);
        BlockY = int16(BlockY / 2);
        Lena016(y, x) = Lena512(BlockY * 32 - 1, BlockX * 32 - 1);
        BlockX = int16(BlockX / 2);
        BlockY = int16(BlockY / 2);
        Lena008(y, x) = Lena512(BlockY * 64 - 1, BlockX * 64 - 1);
    end
end

subplot(3,3,1), imshow(Lena512), title('512');
subplot(3,3,2), imshow(Lena256), title('256');
subplot(3,3,3), imshow(Lena128), title('128');
subplot(3,3,4), imshow(Lena064), title('64');
subplot(3,3,5), imshow(Lena032), title('32');
subplot(3,3,6), imshow(Lena016), title('16');
subplot(3,3,7), imshow(Lena008), title('8');