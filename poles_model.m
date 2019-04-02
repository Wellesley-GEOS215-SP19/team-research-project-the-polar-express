%poles 
%%modeled data 2006-2100
%  CCSM4 at RCP 8.5

% look at attributes
ncdisp('projected_ice.nc')

model=ncread('projected_ice.nc', 'sic');
lat=ncread('projected_ice.nc', 'lat');
lon=ncread('projected_ice.nc', 'lon');
time= ncread('projected_ice.nc', 'time');
%% give real dates to time
timeyear= time./365
%winter and summer value september and march 

%%
marchs = NaN([size(lat, 1) size(lon, 1) 93]);
vector= 3:12:1140

marchs= model(:,:,vector);
     
%%% figure




