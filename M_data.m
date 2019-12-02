% Question 5 %
% Part (a) %

m = 20;
M_t = 0.1*[1:m]' + 0.01*rand(m,1);
M_ft = ((0.2*[1:m]).^2)' + 1*rand(m,1) + 2;

figure(1)
plot(M_t,M_ft,'*');
xlabel('M_t');
ylabel('M_{ft}');
