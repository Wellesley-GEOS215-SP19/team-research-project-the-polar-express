ncdisp('projected_ice_26.nc')

model=ncread('projected_ice_26.nc', 'sic');
lat=ncread('projected_ice_26.nc', 'lat');
lon=ncread('projected_ice_26.nc', 'lon');
time= ncread('projected_ice_26.nc', 'time');

timeyear= time/365
%% 
sep = NaN([size(lat, 1) size(lon, 1) 93]);
svector= 9:12:1140 ;
sep= model(:,:,svector);
%average all the marchs
meansep=mean(sep,[1 2],'omitnan');
meansep1=squeeze(meansep);


