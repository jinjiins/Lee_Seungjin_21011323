function Eci = PQW2ECI(arg_prg, inc_angle, RAAN)

Eci = [ cosd(RAAN)*cosd(arg_prg)-sind(RAAN)*cosd(inc_angle)*sind(arg_prg) cosd(RAAN)*sind(arg_prg)-sind(RAAN)*cosd(inc_angle)*cosd(arg_prg) sind(RAAN)*sind(inc_angle);
    -sind(RAAN)*cosd(arg_prg)+cosd(RAAN)*cosd(inc_angle)*sind(arg_prg) -sind(RAAN)*sind(arg_prg)+cosd(RAAN)*cosd(inc_angle)*cosd(arg_prg) cosd(RAAN)*sind(inc_angle);
    sind(inc_angle)*sind(arg_prg) -sind(inc_angle)*cosd(arg_prg) cosd(inc_angle)
    ];

end