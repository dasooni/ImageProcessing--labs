clf
im = imread('zoneplate.tif');

lp3 = ones(3)/9; % higher cutoff
lp5 = ones(5)/25; % lower cutoff


[olp, ohp, obr obp, oum, ohb] = myfilter(im,lp3,lp5);
imgs = [olp, ohp, obr obp, oum, ohb];
%imshow([olp, ohp, obr, obp, oum, ohb]);


montage(imgs);
%(["Lowpass","Highpass", "Band reject", "Bandpass", "Unsharp masking", "Highboost filtering"])';
figure
imshow(im)