function vec_rot(v,theta)

v_th = rot(v,theta);
    figure(1)
        quiver(0,0,v(1),v(2),0,'r');
        labelstr1 = sprintf('%2s','$v$');
        text(v(1),v(2),labelstr1,'FontSize',24,'interpreter',...
             'latex','color','r');
    hold on;
        quiver(0,0,v_th(1),v_th(2),0,'b');
        labelstr1 = sprintf('%2s','$v_r$');
        text(v_th(1),v_th(2),labelstr1,'FontSize',24,'interpreter','latex',...
             'color','b');
    curve_ang(v, theta);
    hold off;
       