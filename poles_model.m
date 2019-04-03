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
     
%% figure from 2006
load coastlines
figure('Color','w'); clf
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
mlabel on
plabel on;
setm(gca,'MLabelParallel',0)
geoshow(coastlat,coastlon,'DisplayType','polygon', 'DefaultFaceColor','[0, 0.5, 0]','DefaultEdgeColor','black')
contourfm(lat, lon, model(:,:,1)','linecolor','none');
colormap(cmocean('ice')); colorbar;
title ('2006 january sea ice concentration')

%%

figure(1); clf
worldmap world
contourfm(model(:,:,1),'linecolor','none');
colorbar
geoshow('landareas.shp','FaceColor','black')
title('January Sea Surface Temperature (^oC)')





