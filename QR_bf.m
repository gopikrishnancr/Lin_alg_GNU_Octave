function out  = QR_bf(A, b)
  
A_s = A;
[m,n] = size(A);


for j = 1:n
  for i = j+1:m
    Q = eye(m, m);
    theta = TD_angle([A(j,j), A(i,j)]);
		M = [cos(theta) sin(theta);-sin(theta) cos(theta)];
		Q([j,i],[j,i])= M;
		A = Q*A
  end
end

R = A(1:n,1:n);
R_T = R';
b_T = A_s'*b;

y = zeros(n,1);
y(1) = b_T(1)/R_T(1,1);
for i = 2:n
    y(i) = (b_T(i) - R_T(i,1:i-1)*y(1:i-1))/R_T(i,i);
end

x = zeros(n,1);
x(n) = y(n)/R(n,n);

for i = n-1:-1:1
    x(i) = (y(i) - R(i,i+1:n)*x(i+1:n))/R(i,i); 
end

out = x;
