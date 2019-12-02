function output = best_fit(M_t, M_ft, n)
  
  % Function to find best n^th degree polynomial for the data set
  % M_t * M_ft.

m = length(M_t);  
A_van = zeros(m,n+1);

for j = 1:n+1
  A_van(:,j) = M_t.^(j-1);
end
  
  b = M_ft;
  
  x_vec = QR_bf(A_van, b);
  f_vec = A_van*x_vec;
  
figure(1)
plot(M_t,M_ft,'b *');
hold on;
plot(M_t,f_vec,'r-');

xlabel('M_t');
ylabel('M_{ft}');

end