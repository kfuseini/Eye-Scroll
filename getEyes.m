function [ left_eye, right_eye ] = getEyes( img )

    EyeDetect = vision.CascadeObjectDetector('EyePairBig');
    BB=EyeDetect(img);
%     x=length(BB(:,4));
    
    I2 = imcrop(img,BB);
    
%     figure,imshow(I2);
%     rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','b');

    %To detect the right eye 
    right_eye = I2(:, 1 : floor(end/2.3));
%     figure;imshow(left_eye);
    % hold on
    % plot(corners.selectStrongest(10));
    % hold off

    %To detect the left eye
    left_eye = I2(:, floor(end/(2.24))+1 : end );
%     corners = detectHarrisFeatures(na2);
%     figure; imshow(right_eye); 

%     imwrite(na1, 'l_eye.jpg');

end

