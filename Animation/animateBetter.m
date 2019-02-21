close all;

[tarray,zarray] = doDynamics;
l = 1;
theta = zarray(:,1);

animationPlot = plot(0,0,'.','MarkerSize',30);

% Animation loop
for i = 1:length(tarray)
    animationPlot.XData = l*sin(theta(i));
    animationPlot.YData = -l*cos(theta(i));
    
    axis([-1.2,1.2,-1.2,0]);
    pause(0.1)
end
