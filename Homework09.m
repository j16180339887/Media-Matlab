Lena = imread('C:\Users\Joeky\Desktop\NTUST\Matlab\Day3\Lena.jpg');
grayLena = rgb2gray(Lena);

% imshow(grayLena);

Hua = imread('C:\Users\Joeky\Desktop\NTUST\Matlab\Day3\hua.jpg');
Hua = rgb2gray(Hua);
binaryHua = Hua>127;

height = size(grayLena);
grayLena1 = binaryHua;
grayLena2 = bitget(grayLena, 2)>0;
grayLena3 = bitget(grayLena, 3)>0;
grayLena4 = bitget(grayLena, 4)>0;
grayLena5 = bitget(grayLena, 5)>0;
grayLena6 = bitget(grayLena, 6)>0;
grayLena7 = bitget(grayLena, 7)>0;
grayLena8 = bitget(grayLena, 8)>0;

HuaLena = imadd(uint8(grayLena1), uint8(grayLena2 * 2));
HuaLena = imadd(uint8(HuaLena), uint8(grayLena3 * 4));
HuaLena = imadd(uint8(HuaLena), uint8(grayLena4 * 8));
HuaLena = imadd(uint8(HuaLena), uint8(grayLena5 * 16));
HuaLena = imadd(uint8(HuaLena), uint8(grayLena6 * 32));
HuaLena = imadd(uint8(HuaLena), uint8(grayLena7 * 64));
HuaLena = imadd(uint8(HuaLena), uint8(grayLena8 * 128));

subplot(3,3,1), imshow(grayLena1), title('1');
subplot(3,3,2), imshow(grayLena2), title('2');
subplot(3,3,3), imshow(grayLena3), title('3');
subplot(3,3,4), imshow(grayLena4), title('4');
subplot(3,3,5), imshow(grayLena5), title('5');
subplot(3,3,6), imshow(grayLena6), title('6');
subplot(3,3,7), imshow(grayLena7), title('7');
subplot(3,3,8), imshow(grayLena8), title('8');
subplot(3,3,9), imshow(HuaLena), title('9');