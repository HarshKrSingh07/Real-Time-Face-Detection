%Face Detection
web = webcam();
im = snapshot(web);
dete = vision.CascadeObjectDetector();
dete.MergeThreshold = 150;
imshow(im);

while true
    im = snapshot(web);
    im2 = rgb2gray(im);
    bbox = step(dete,im2);
    pic = insertObjectAnnotation(im,'rectangle',bbox,'Face');
    imshow(pic);
end
