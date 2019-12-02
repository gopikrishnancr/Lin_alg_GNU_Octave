% Question 3

% Part a %

%m = 5;               % number of rows
%n = 3;               % number of columns 
%A = zeros(m,n);     % initiate A as an m*n sparse matrix
%A(:,1) = ones(5,1);
%A(1,2) = 1; A(1,3) = 1; A(3,3) = 1;

for j = 1:n
  for i = j+1:m
    Q = eye(m, m);
    theta = TD_angle([A(j,j), A(i,j)]);
		M = [cos(theta) sin(theta);
    -sin(theta) cos(theta)];
		Q([j,i],[j,i])= M;
		A = Q*A
  end
end
