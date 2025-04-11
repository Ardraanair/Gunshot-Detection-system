
% This script uses microphone array data from image files
% Uploaded images are assumed to contain array layout or data visuals
% The script loads and displays all uploaded images for reference

% Clear workspace and figures
clear; close all; clc;

% Define JPEG image file paths
imageFiles = {
    'image1.jpeg',
    'image2.jpeg',
    'image3.jpeg',
    'image4.jpeg',
    'image5.jpeg'
};

% File paths where images were saved (now in .jpeg format)
uploadedFilePaths = {
    '/mnt/data/image1.jpeg',
    '/mnt/data/image2.jpeg',
    '/mnt/data/image3.jpeg',
    '/mnt/data/image4.jpeg',
    '/mnt/data/image5.jpeg'
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

end

tiledlayout('flow'); % Optional for better layout management
