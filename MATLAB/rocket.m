function dz = rocket(t,z)
    c = 0.4;                    % kg/m
    g = 9.82;                   % m/s^2

    k_m = 2000;                 % m/s
    u_x = k_m*cos(direct(t));
    u_y = k_m*sin(direct(t));

    [m,dm] = r_mass(t);

    dz1 = z(2);
    dz2 = -c/m*sqrt(z(2)^2+z(4)^2)*z(2)+dm/m*u_x;
    dz3 = z(4);
    dz4 = -c/m*sqrt(z(2)^2+z(4)^2)*z(4)+dm/m*u_y-g;
    
    dz = [dz1;dz2;dz3;dz4];
end