% STIR preprocessing driver
%
% This is the main preprocessing script to generate the grid and STIR specific 
% input station list files for input to STIR
%
% Three input data requirements not covered in this preprocessing suite:
%
% 1) The mask in the raw DEM MUST be determined by the user.  This mask
%    determines land/ocean/not valid and is NOT developed here.  This
%    mask is used for computations (valid land pixels only) and also the
%    distance to coast calculation.  The distance to coast estimates the
%    distance to/from bodies of water that may impart moisture to influence
%    precipitation nearby.  Thus the user can determine which bodies of
%    water receive the 'ocean' flag and are deemed important.  A smaller
%    lake that is flagged as not valid may/may not influence precipitation,
%    but the Great Lakes do influence local precipitation.
%
%    Of course the user is encouraged to change/experiment with which pixels 
%    values are computed over and/or how distance to coast is computed.

% 2) The user MUST have the input station data in the proper netcdf file
%    format. That can easily be copied from the example data.

% 3) If the user desires a spatailly variable default lapse rate (right now
%    for temperature only) that needs to be provided as well in a netcdf 
%    file. The user can again follow provided the example data set.
%
% Author: Andrew Newman NCAR/RAL
% Email : anewman@ucar.edu
%
%

%User determines the controlName
controlName = input('Enter the name of your control file: ', 's');

%read control file
controlVars = readPreprocessControl(controlName);

%initialize parameter structure to default values
parameters = initParameters(controlVars.parameterFile);

%read preprocessing parameters file
parameters = readPreprocessParameters(controlVars.parameterFile,parameters);

%read grid file
grid = readRawGrid(controlVars.gridName);

%set output grid
outGrid = grid;

%create topographic aspects (integer numbers) (e.g. Daly et al. 1994)
outGrid.aspects = calcTopoAspects(grid,parameters);

%calculate distance to coastline (km) (e.g. Daly et al. 2002)
outGrid.distToCoast = calcDistToCoast(grid,parameters.coastSearchLength);

%calculate two-layer atmospheric position (layer 1 or 2) and the
% topographic position (m) (e.g. Daly et al. 2002)
outGrid.positions = calcPositions(grid,parameters.layerSearchLength,parameters.inversionHeight);

%output to processed grid file
outputGrid(controlVars,outGrid);


%create station list files for input to main STIR program
%precipitation


%temperature

