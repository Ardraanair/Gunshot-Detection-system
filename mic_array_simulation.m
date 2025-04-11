
% This script uses microphone array data from image files
% Uploaded images are assumed to contain array layout or data visuals
% The script loads and displays all uploaded images for reference

% Clear workspace and figures
clear; close all; clc;

% Define image file paths
imageFiles = {
    'image1.png',
    'image2.png',
    'image3.png',
    'image4.png',
    'image5.png'
};

% File IDs from upload
uploadedFilePaths = {
    '/mnt/data/image.png',      % file-MV7gFTDko8VFtBhy5A1NH5
    '/mnt/data/image.png',      % file-TrDAvwGYc5NPefZdAd9D2a
    '/mnt/data/image.png',      % file-KEtKcYFX9N2HTggzMReev8
    '/mnt/data/image.png',      % file-MVgsrYSK7j1F23S4Mmv6Ly
    '/mnt/data/image.png'       % file-Hz3hPQ7b2725GTPoXfMR2j
};

% Display all images in separate subplots
figure('Name', 'Microphone Array Simulation Images', 'NumberTitle', 'off');
for i = 1:length(uploadedFilePaths)
    img = imread(uploadedFilePaths{i});
    subplot(2, 3, i);
    imshow(img);
    title(sprintf('Image %d', i));
end

tiledlayout('flow'); % Optional for better layout management
