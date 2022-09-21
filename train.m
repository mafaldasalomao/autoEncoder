%% Reconstruct Handwritten Digit Images Using Sparse Autoencoder

clc; clear all; close all;
%read dataset 28x28
XTrain = digitTrainCellArrayData;


hiddenSize = 25; % hidden layers containing 25 neurons
autoenc = trainAutoencoder(XTrain,hiddenSize,...
        'L2WeightRegularization',0.004,...
        'SparsityRegularization',4,...
        'SparsityProportion',0.15);


save autoenc autoenc