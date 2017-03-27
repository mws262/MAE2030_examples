% This is the simplest way to animate -- Call PLOT really fast! It's
% neither efficient nor smooth.
close all;

[tarray,zarray] = doDynamics;
l = 1;
theta = zarray(:,1);

% Animation loop
for i = 1:length(tarray)
    plot(l*sin(theta(i)),-l*cos(theta(i)),'.','MarkerSize',30);
    axis([-1.2,1.2,-1.2,0]);
    pause(0.1)
end

