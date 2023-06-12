% Coordinate Transform Functions
% input : time ([YYYY,MM,DD,hh,mm,ss] format)
% output : DCM matrix (3-by-3)

function DCM = ECI2ECEF_DCM(time)


UTCdate = juliandate(datetime(time));


%Greenwich mean sidereal time
theta = siderealTime(UTCdate) * pi / 180;

DCM = [cos(theta) sin(theta) 0; -sin(theta) cos(theta) 0; 0 0 1];

end