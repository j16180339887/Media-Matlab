c  = imread('C:\Users\Joeky\Desktop\NTUST\Matlab\Day3\cameraman.tif');
cd = double(c);
c1 = c>120;
figure;
subplot(2,4,1), imshow(cd), title('1');
subplot(2,4,2), imshow(cd / 128), title('2');
subplot(2,4,3), imshow(cd / 512), title('3');
subplot(2,4,4), imshow((c>120)), title('4');
subplot(2,4,5), imshow(uint8(c1)), title('5');
subplot(2,4,6), imshow(c), title('6');