function curve_ang(v, th)
ang_1 = TD_angle(v);
ang_2 = ang_1 - th;
a_rn = linspace(ang_1, ang_2, 100);

r_c = norm(v,2)/3;
x_v = r_c*cos(a_rn);
y_v = r_c*sin(a_rn);
plot(x_v(1:end), y_v(1:end), '-','color','g','LineWidth',2)

