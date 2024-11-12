% Read the input image
img = imread('hello.jpg');  % Replace 'image.jpg' with your image file

% Display the original image
figure;
subplot(2, 4, 1);
imshow(img);
title('Original Image');

% Step 1: Resize the image
resizedImg = imresize(img, [256 256]);
subplot(2, 4, 2);
imshow(resizedImg);
title('Resized Image');

% Step 2: Convert to grayscale
if size(resizedImg, 3) == 3
    grayImg = rgb2gray(resizedImg);
else
    grayImg = resizedImg;
end
subplot(2, 4, 3);
imshow(grayImg);
title('Grayscale Image');

% Step 3: Apply Median Filtering for noise reduction
medianFilteredImg = medfilt2(grayImg, [3 3]);  % Using a 3x3 filter
subplot(2, 4, 4);
imshow(medianFilteredImg);
title('Median Filtered Image');

% Step 4: Adaptive Histogram Equalization for local contrast enhancement
adaptHistEqImg = adapthisteq(medianFilteredImg);
subplot(2, 4, 5);
imshow(adaptHistEqImg);
title('Adaptive Histogram Equalization');

% Step 5: Image Sharpening
sharpenedImg = imsharpen(adaptHistEqImg, 'Radius', 2, 'Amount', 1); % Adjust parameters as needed
subplot(2, 4, 6);
imshow(sharpenedImg);
title('Sharpened Image');

% Step 6: Morphological Operations - Opening (to remove small noise)
se = strel('disk', 3);  % Structural element for morphological operations
openedImg = imopen(sharpenedImg, se);
subplot(2, 4, 7);
imshow(openedImg);
title('Morphologically Opened Image');

% Step 7: Add Gaussian Noise for data augmentation
noisyImg = imnoise(openedImg, 'gaussian', 0, 0.01);  % Adjust variance as needed
subplot(2, 4, 8);
imshow(noisyImg);
title('Image with Gaussian Noise');

% Display summary of results
sgtitle('Advanced Image Preprocessing Steps');