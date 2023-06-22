function DCM = ECEF2ENU_DCM(lon, lat)


DCM = [cosd(90 + lat) sind(90 + lat) 0; -sind(90 + lat) cosd(90 + lat) 0; 0 0 1;] * [1 0 0; 0 cosd(90 - lon) sind(90 - lon); 0 -sind(90 - lon) cosd(90 - lon)];

end

% 
% function DCM = ECEF2ENU_DCM(lon, lat)
%     % 입력된 경도 및 위도 값에 대한 변환을 위한 상수
%     deg_to_rad = pi / 180.0;
%     lon = lon * deg_to_rad;
%     lat = lat * deg_to_rad;
% 
%     % ECEF 좌표계에서 ENU 좌표계로 변환하는 회전 행렬 계산
%     sin_lon = sin(lon);
%     cos_lon = cos(lon);
%     sin_lat = sin(lat);
%     cos_lat = cos(lat);
% 
%     DCM = [-sin_lon, cos_lon, 0;
%          -sin_lat * cos_lon, -sin_lat * sin_lon, cos_lat;
%          cos_lat * cos_lon, cos_lat * sin_lon, sin_lat];
% end
