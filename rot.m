function out= rot(v, theta)
  % v is a column verctor in 2D.
  M = [cos(theta) sin(theta);
     -sin(theta) cos(theta)];
  out = M*v;
end
