v = [1;1;1;1;1];
i = 3;
m = length(v);
theta=TD_angle([v(1) v(i)])
%theta = atan2(v(i),v(1));
%if theta < 0
 %  theta = theta+2*pi;
%end
M = [cos(theta) sin(theta);-sin(theta) cos(theta)];
Q = eye(m,m);
Q([1,i],[1,i]) = M;
Q*v
 

