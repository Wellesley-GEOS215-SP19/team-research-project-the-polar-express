%poles 
%%modeled data 2006-2100
%  CCSM4 at RCP 8.5

% look at attributes
ncdisp('hist_ice.nc')

model=ncread('hist_ice.nc', 'sic');
lat=ncread('hist_ice.nc', 'lat');
lon=ncread('hist_ice.nc', 'lon');
time= ncread('hist_ice.nc', 'time');
%% give real dates to time
timeyear= time./365
%winter and summer value september and march 

%%
marchs = NaN([size(lat, 1) size(lon, 1) 93]);
vector= 3:12:1140
marchs= model(:,:,vector);
     
%% figure generation from historical data (1850)
% march
%figure(1);
load coastlines
figure('Color','w'); clf
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
mlabel on
plabel on;
setm(gca,'MLabelParallel',0)
contourfm(lat, lon, model(:,:,3)','linecolor','none');
colormap(cmocean('ice')); colorbar;

geoshow(coastlat,coastlon,'DisplayType','polygon', 'DefaultFaceColor','[0, 0.5, 0]','DefaultEdgeColor','black')
title ('1850 March Percent Sea Ice Concentration')

% september
%figure(2);
load coastlines
figure('Color','w'); clf
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
mlabel on
plabel on;
setm(gca,'MLabelParallel',0)
contourfm(lat, lon, model(:,:,9)','linecolor','none');
colormap(cmocean('ice')); colorbar;

geoshow(coastlat,coastlon,'DisplayType','polygon', 'DefaultFaceColor','[0, 0.5, 0]','DefaultEdgeColor','black')
title ('1850 September Percent Sea Ice Concentration')
%% 1900
% march
%figure(3);
load coastlines
figure('Color','w'); clf
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
mlabel on
plabel on;
setm(gca,'MLabelParallel',0)
contourfm(lat, lon, model(:,:,603)','linecolor','none');
colormap(cmocean('ice')); colorbar;

geoshow(coastlat,coastlon,'DisplayType','polygon', 'DefaultFaceColor','[0, 0.5, 0]','DefaultEdgeColor','black')
title ('1900 March Percent Sea Ice Concentration')

% september
%figure(4);
load coastlines
figure('Color','w'); clf
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
mlabel on
plabel on;
setm(gca,'MLabelParallel',0)
contourfm(lat, lon, model(:,:,609)','linecolor','none');
colormap(cmocean('ice')); colorbar;

geoshow(coastlat,coastlon,'DisplayType','polygon', 'DefaultFaceColor','[0, 0.5, 0]','DefaultEdgeColor','black')
title ('1900 September Percent Sea Ice Concentration')
%% 1950
% march
%figure(5);
load coastlines
figure('Color','w'); clf
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
mlabel on
plabel on;
setm(gca,'MLabelParallel',0)
contourfm(lat, lon, model(:,:,1203)','linecolor','none');
colormap(cmocean('ice')); colorbar;

geoshow(coastlat,coastlon,'DisplayType','polygon', 'DefaultFaceColor','[0, 0.5, 0]','DefaultEdgeColor','black')
title ('1950 March Percent Sea Ice Concentration')

% september
%figure(6);
load coastlines
figure('Color','w'); clf
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
mlabel on
plabel on;
setm(gca,'MLabelParallel',0)
contourfm(lat, lon, model(:,:,1209)','linecolor','none');
colormap(cmocean('ice')); colorbar;

geoshow(coastlat,coastlon,'DisplayType','polygon', 'DefaultFaceColor','[0, 0.5, 0]','DefaultEdgeColor','black')
title ('1950 September Percent Sea Ice Concentration')
