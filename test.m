%Load the test data.
load('autoenc.mat')
XTest = digitTestCellArrayData;

%reconstruct using autoencoder

xReconstructed = predict(autoenc,XTest);

%Show original
figure;
for i = 1:20
    subplot(4,5,i);
    imshow(XTest{i});
end
%show reconstructed
figure;
for i = 1:20
    subplot(4,5,i);
    imshow(xReconstructed{i});
end