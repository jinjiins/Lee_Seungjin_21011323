% Solve r and v in perifocal frame from orbit parameters
% - function 명 : solveRangeInPerifocalFrame, solveVelocityInPerifocalFrame 
% - input : semimajor_axis, eccentricity, true_anomaly  : 3개 scalar 변수
% - output : rangeInPQW, velocityInPQW (unit : km/s) 3-by-1 matrix each, in perifocal coordinate
% μ = 3.986004418× 1014 [m3 s−2]
% ex)
% rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly);
% velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly);
% rangeInPQW = [10000 10000 0]T ;     velocityInPQW = [-100 100 0]T; 
%  
% 주의사항
% 1) 생성된 Repository에 matlab function 생성 후 commit - push
% 2) Input & output 각도 unit : deg, 거리 unit : km로 통일

function rangeINPQR = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)

km = 10^3;                                                                      % 1000m
mu = 3.986004418 * 10^14/km^3;                                                  % km^3s-2

P = semimajor_axis * ( 1 - eccentricity^2);
true_anomaly_rad = true_anomaly * pi / 180;                                    % deg to radian
rangeINPQR = [P / (1 + eccentricity * cos(true_anomaly_rad))*cos(true_anomaly_rad); P / (1 + eccentricity * cos(true_anomaly_rad)) * sin(true_anomaly_rad); 0;];


end