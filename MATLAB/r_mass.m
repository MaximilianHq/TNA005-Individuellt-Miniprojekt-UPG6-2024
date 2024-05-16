function [m,dm] = r_mass(t)
    r_fuel = 20;                % kg
    r_weight = 10;              % kg
    r_tot = r_fuel + r_weight;  % kg
    r_fuel_con = 0.2;           % kg/s
    
    if t < 7
        m = r_tot;
        dm = 0;
    elseif t < 107
        m = r_tot-r_fuel_con*(t-7);
        dm = -r_fuel_con;
    else
        m = r_weight;
        dm = 0;
    end
end