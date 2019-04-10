%poles 
%%modeled data 2006-2100
%  CCSM4 at RCP 2.6

% look at attributes
ncdisp('RCP_2.6_(2006-2100).nc')

model=ncread('RCP_2.6_(2006-2100).nc', 'sic');
lat=ncread('RCP_2.6_(2006-2100).nc', 'lat');
lon=ncread('RCP_2.6_(2006-2100).nc', 'lon');
time= ncread('RCP_2.6_(2006-2100).nc', 'time');
%% give real dates to time
timeyear= time./365
%winter and summer value september and march 

%%
marchs = NaN([size(lat, 1) size(lon, 1) 93]);
vector= 3:12:1140
marchs= model(:,:,vector);
     
%% figure generation from historical data (2006)
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
title ('2006 March Percent Sea Ice Concentration for RCP 2.6')

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
title ('2006 September Percent Sea Ice Concentration for RCP 2.6')
%% 2050
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
title ('2050 March Percent Sea Ice Concentration for RCP 2.6')

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
title ('2050 September Percent Sea Ice Concentration for RCP 2.6')
%% 2080
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
contourfm(lat, lon, model(:,:,963)','linecolor','none');
colormap(cmocean('ice')); colorbar;

geoshow(coastlat,coastlon,'DisplayType','polygon', 'DefaultFaceColor','[0, 0.5, 0]','DefaultEdgeColor','black')
title ('2080 March Percent Sea Ice Concentrationfor RCP 2.6')

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
contourfm(lat, lon, model(:,:,969)','linecolor','none');
colormap(cmocean('ice')); colorbar;

geoshow(coastlat,coastlon,'DisplayType','polygon', 'DefaultFaceColor','[0, 0.5, 0]','DefaultEdgeColor','black')
title ('2080 September Percent Sea Ice Concentration for RCP 2.6')