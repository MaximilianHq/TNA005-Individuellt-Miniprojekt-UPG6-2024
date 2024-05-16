function r_angle = direct(t)

    if t < 38.2
        v = 3*pi/2;         % N
    elseif t < 50
        v = pi;             % E
    elseif t < 56.5
        v = 3*pi/2;         % N
    elseif t < 62.2
        v = pi;             % E
    elseif t < 100
        v = pi/4;           % SW
    else
        v = 0;
    end

    r_angle = v;
end