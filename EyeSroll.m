import java.awt.Robot;

cam = webcam(1);
mouse = Robot;


fig = figure('Position',[1280 800 1280 800], 'NumberTitle','off','MenuBar','none');
fig.Name = 'My Camera';

ax = axes(fig); 
frame = rgb2gray(snapshot(cam)); 
im = image(ax,zeros(size(frame),'uint8')); 
axis(ax,'image');

preview(cam,im);

text(500, -110, 'Look Here and Press Enter', 'fontsize', 20, 'color', 'blue');
pause;

% Get up image
up_img = rgb2gray(snapshot(cam));


text(590, 300, 'Look Here Now', 'fontsize', 20, 'color', 'green');
pause;

% Get mid image
mid_img = rgb2gray(snapshot(cam));


text(590, 800, 'Finally, Look Here', 'fontsize', 20, 'color', 'red');
pause;

% Get down image
down_img = rgb2gray(snapshot(cam));


pause;

closePreview(cam);
delete(get(0,'CurrentFigure'));

% imshow(up_img)
[up_left__eye, up_right_eye] = getEyes(up_img);
[mid_left__eye, mid_right_eye] = getEyes(mid_img);
[down_left__eye, down_right_eye] = getEyes(down_img);

% figure; imshow(up_right_eyes);
% figure; imshow(mid_right_eyes);
% figure; imshow(down_right_eyes);

ImageTemplatesGUI(up_right_eye, mid_right_eye,down_right_eye);

notDone = true;
while notDone
    curr_img = rgb2gray(snapshot(cam));
    [curr_left_eye, curr_right_eye] = getEyes(curr_img);
    direction = getScrollDirection(curr_right_eye, up_right_eye, mid_right_eye, down_right_eye);
    if (strcmp(direction, 'up'))
        mouse.mouseWheel(3);
    elseif (strcmp(direction, 'down'))
        mouse.mouseWheel(-3);
    end
    stop = ControlsGUI(curr_right_eye, direction);
    if (strcmp(stop, 'stop'))
        notDone = false;
    end
    pause(0.1);
    
end


clear;
