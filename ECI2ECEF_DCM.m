% Coordinate Transform Functions
% input : time ([YYYY,MM,DD,hh,mm,ss] format)
% output : DCM matrix (3-by-3)

function DCM = ECI2ECEF_DCM(time)


UTCdate = juliandate(time);


%Greenwich mean sidereal time
theta = siderealTime(UTCdate);

DCM = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1];

end