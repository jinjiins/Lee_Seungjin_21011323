%Test
function DCM = ECEF2ENU_DCM(lat, lon)


DCM = [cosd(90+lat) sind(90+lat) 0; -sind(90+lat) cosd(90+ lat) 0; 0 0 1;] * [1 0 0; 0 cosd(90 - lon) sind(90 - lon); 0 sind(90 - lon) cosd(90 - lon)];

end