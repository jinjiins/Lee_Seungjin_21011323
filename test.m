clc;
clear;

load('nav.mat');
t0 = datetime('2000-1-1');
t0 = datevec(t0);

toc = nav.GPS.toc;
currentDateTime = datetime(toc);
targetDateTime = datetime(toc) + years(1);
data = nav.GPS;
r = [];
r_eci = [];
r_ecef = [];

for i = 0:1:360
    r = [ r solveRangeInPerifocalFrame(data.a, data.e, i)];
end

for i = 0:1:360
    r_eci = [ r_eci (PQW2ECI(data.omega, data.i, data.OMEGA) * r(:,i+1))];
end

r = 6371;
[ X, Y, Z ] = sphere(100);
fig = figure();
set(fig, "Color", "white");

surf( X * r, Y * r, Z * r, 'EdgeColor','none');
hold on;
comet3(r_eci(1,:), r_eci(2, :), r_eci(3, :));
grid on;

% M = data.M0;
% E1 = 0;
% e = 1;
% while e  > 0.0001
%     E2 = M + data.e * sin(E1);
%     E1 = E2;
%     e = E2 - E1;
% end
% true_anomaly = atan2((cos(E2) - data.e)/ (1 - data.e * E2), sqrt( 1 - data.e^2) * sin(E2)/ (1 - data.e * cos(E2)));
% 
% 
% 
% r0 = solveRangeInPerifocalFrame(data.a, data.e, true_anomaly);
% r_eci0 = PQW2ECI(data.omega, data.i, data.OMEGA) * r;





% while true
%     nextDateTime = currentDateTime + caldays(1);
%     % or hours(1);
% 
%     pause(0.1);
%     t = datevec(nextDateTime);
%     r_ecef =  ECI2ECEF_DCM(t) * r_eci0;
%     lla = ecef2lla(r_ecef);
%     geoplot(lla);
%     currentDateTime = nextDateTime;
%     disp(nextDateTime);
% 
% 
%     if currentDateTime == targetDateTime
%         break;
%     end
% end

