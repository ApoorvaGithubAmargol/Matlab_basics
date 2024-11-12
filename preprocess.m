a = imread('hello.jpg');
subplot(2,3,1);
imshow(a);

b = rgb2gray(a);
subplot(2,3,2);
imshow(b);

c = im2bw(a);
subplot(2,3,3);
imshow(c);

d = imadjust(b);
subplot(2,3,4);
imshow(d);

e = a;
e=rgb2gray(e);
subplot(2,3,5);
imhist(e);

imfinfo('hello.jpg')

[height, width, colour_planes] = size(a)

%colormap('spring')