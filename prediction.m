%% SVM SPAM EMAIL CLISSIFICATION EXPERIMENT

%% Predicts whether an email is a spam or not

%% Initialization
clear ; close all; clc

% Set the file to be read in (change this to spamSample2.txt,
% emailSample1.txt or emailSample2.txt to see different predictions on
% different emails types). Try your own emails as well!

load('model.mat');

filename = 'input.txt';

% Read and predict
file_contents = readFile(filename);
word_indices  = processEmail(file_contents);
x             = emailFeatures(word_indices);
p = svmPredict(model, x);

fprintf('\nProcessed %s\n\nSpam Classification: %d\n', filename, p);
fprintf('(1 indicates spam, 0 indicates not spam)\n\n');

if p==1
	fprintf('It is a spam!\n\n');
else
	fprintf('It is not a spam!\n\n');
endif



