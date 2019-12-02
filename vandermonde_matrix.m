% Question 5 %
% Part b %

% Construction of the Vandermonde matrix %
clc;
M_data;

n = 10;
A_van = zeros(m,n+1);

for j = 1:n+1
  A_van(:,j) = M_t.^(j-1);
end

best_fit(M_t, M_ft, n)