Lena = imread('Lena.jpg');
Lena = histpwl(Lena, [0 .25 .5 .75 1], [0 .75 .25 .5 1]);
imshow(Lena);