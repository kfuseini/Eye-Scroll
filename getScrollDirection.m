function [ direction ] = getScrollDirection(curr_right_eye, up_right_eye, mid_right_eye, down_right_eye)
    
%     [up_left_eye, up_right_eye] = getEyes(up_img);
%     [mid_left_eye, mid_right_eye] = getEyes(mid_img);
%     [down_left_eye, down_right_eye] = getEyes(down_img);
    
    
%     [curr_left_eye, curr_right_eye] = getEyes(curr_img);
    
    up_right_eye = imresize(up_right_eye, size(curr_right_eye)); %imresize(up_right_eye, size(curr_right_eye));
    mid_right_eye = imresize(mid_right_eye, size(curr_right_eye)); %imresize(mid_right_eye, size(curr_right_eye));
    down_right_eye = imresize(down_right_eye, size(curr_right_eye)); %imresize(down_right_eye, size(curr_right_eye));
    
%     figure; imshow(up_right_eye);
%     figure; imshow(mid_right_eye);
%     figure; imshow(down_right_eye);
%     
%     figure; imshow(curr_right_eye);

    up_ssim_val = ssim(curr_right_eye, up_right_eye);
    mid_ssim_val = ssim(curr_right_eye, mid_right_eye);
    down_ssim_val = ssim(curr_right_eye, down_right_eye);
    
    max_val = max([up_ssim_val, mid_ssim_val, down_ssim_val]);
    
    if up_ssim_val == max_val
        direction = 'up';
    elseif mid_ssim_val == max_val
        direction = 'mid';
    else
        direction = 'down';
    end

end

