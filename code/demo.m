inputImage = imread('./../Data_Set/21_training.tif');
goundTruth = imread('./../Data_Set/21_training.gif');
figure;
imshow(inputImage);
title("Raw inputed image");

figure;
imshow(goundTruth);
title("Ground Truth");

segImage = vesselSegPC(inputImage); 



figure;
imshow(segImage);
title("Processed data");


validation(goundTruth,segImage)
