I = imread('hi.jpg');
imshow(I)
A=rgb2gray(I);
imshow(A)


figure
subplot(1,2,1)
imshow(A)
subplot(1,2,2)
imhist(A)

J = histeq(A);
figure
subplot(1,2,1)
imshow(J)
subplot(1,2,2)
imhist(J)