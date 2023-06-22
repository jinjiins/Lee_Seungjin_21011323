% Elevation, azimuth angle calculator
% input : ENU (행이 시각 또는 위성수, 열이 ENU로 구성된 위성 ENU 위치로 구성된 n-by-3 matrix, 단위 km)
% output : azimuth angle (1-by-n, 단위 deg)

function az = azimuth(ENU)

az = atan2(ENU(:,1), ENU(:,2)) * 180 / pi;


end
