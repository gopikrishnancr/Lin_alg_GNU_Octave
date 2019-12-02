function out = given_vec(v)
  
  m = length(v);
  rot = eye(m,m);
  
  for j = 2:m
    theta(j) = TD_angle([v(1) v(j)]);
    M=[cos(theta(j)) sin(theta(j));
    -sin(theta(j)) cos(theta(j))];
    Q = eye(m,m);
    Q([1,j],[1,j]) = M;
    v = Q*v;
  end
  
  out = v;
end
