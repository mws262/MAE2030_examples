close all;

[tarray,zarray] = doDynamics;
l = 1;
theta = zarray(:,1);
finalTime = tarray(end);

animationPlot = plot(0,0,'.','MarkerSize',30);
axis([-1.2,1.2,-1.2,0]);
daspect([1,1,1]);
    
% Animation loop
currentTime = 0;
tic;
while currentTime < finalTime
    
    currentTheta = interp1(tarray,theta,currentTime);
    
    animationPlot.XData = l*sin(currentTheta);
    animationPlot.YData = -l*cos(currentTheta);
    
    currentTime = toc;
    drawnow;
end
