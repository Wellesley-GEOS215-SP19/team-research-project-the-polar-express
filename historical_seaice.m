%% using this code to start to find historical sea ice patterns (1900-2005)

%% uploading data

%dataset info
ncdisp('sit_OImon_ensemble_historical_190001-200512.nc');

%read in whole thing
seaice = ncread('sit_OImon_ensemble_historical_190001-200512.nc', 'sit'); %lon, lat, time

%reading in variables
lon = ncread('sit_OImon_ensemble_historical_190001-200512.nc', 'lon');
lat = ncread('sit_OImon_ensemble_historical_190001-200512.nc', 'lat');
time = ncread('sit_OImon_ensemble_historical_190001-200512.nc', 'time');
%sit = ncread('seaice', 'sit');

year= time./365;


%% figures




