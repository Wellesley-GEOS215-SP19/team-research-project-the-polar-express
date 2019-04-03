%% using this code to start to find historical sea ice patterns

%% uploading data

seaice = netcdf.open('sit_OImon_ensemble_historical_190001-200512.nc', 'NOWRITE');
seaice2 = netcdf.open('sit_OImon_CCSM4_historical_r1i1p1_190001-200512.nc', 'NOWRITE');

ncid = 'sit_OImon_ensemble_historical_190001-200512.nc';
ncid1 = 'sit_OImon_CCSM4_historical_r1i1p1_190001-200512.nc';

ncinfo('seaice');

ncdisp('ncid');

%reading in variables
lon = ncread('seaice', 'lon');
whos seaice
lat = ncread('seaice', 'lat');
whos seaice
time = ncread('seaice', 'time');
whos seaice
time_bnds = ncread('seaice', 'time_bnds');
whos seaice
sit = ncread('seaice', 'sit');
whos seaice

