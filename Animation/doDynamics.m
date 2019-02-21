function [tarray,zarray] = doDynamics
% Just integrate the pendulum so we have state info to work with.

% Handle integration
g = 1;
l = 1;
[tarray,zarray] = ode45(@odeFun,[0 10],[pi/2,0]);

    function zdot = odeFun(t,z)
        thdd = -g/l*sin(z(1));       
        zdot = [z(2);thdd];        
    end
end