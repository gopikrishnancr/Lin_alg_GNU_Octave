function theta = TD_angle(v)

  %v=[0, 1]';
  x = v(1); y = v(2);
  if atan2(y, x)< 0
    theta = atan2(y, x) + 2*pi;
  else
    theta = atan2(y,x);
  end
  
end
