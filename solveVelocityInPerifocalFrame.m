% Solve r and v in perifocal frame from orbit parameters

function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)

km = 10^3;                                              % 1000m
mu = 3.986004418 * 10^14 / km^3;                        % km^3s-2
P = semimajor_axis * ( 1 - eccentricity^2);             % km

true_anomaly_rad = strue_anomaly * pi / 180;            % deg to radian

velocityInPQW = sqrt(mu/P) * [-sin(true_anomaly_rad); eccentricity + cos(true_anomaly_rad); 0];   %km/s 


end
