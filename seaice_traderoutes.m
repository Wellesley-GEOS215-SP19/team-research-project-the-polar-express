%% using this code to start to plot shipping routes across various Arctic ice scenarios

%% uploading data

% dataset info
ncdisp('sic_OImon_CCSM4_rcp85_r1i1p1_200601-210012.nc');

% reading in variables
model = ncread('sic_OImon_CCSM4_rcp85_r1i1p1_200601-210012.nc', 'sic'); %lon, lat, time

lon = ncread('sic_OImon_CCSM4_rcp85_r1i1p1_200601-210012.nc', 'lon');
lat = ncread('sic_OImon_CCSM4_rcp85_r1i1p1_200601-210012.nc', 'lat');
time = ncread('sic_OImon_CCSM4_rcp85_r1i1p1_200601-210012.nc', 'time');

year= time./365;

% trade route data
coordinates = readtable('trade routes.csv');

%%
marchs = NaN([size(lat, 1) size(lon, 1) 93]);
vector= 3:12:1140;
marchs= model(:,:,vector);

%% March 1850

%figure (1);
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

%% September 1850

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

%% March 2006 

%figure(3)
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
contourfm(lat, lon, model(:,:,3)','linecolor','none');
colormap(cmocean('ice')); colorbar;
title ('2006 March Percent Sea Ice Concentration')

% add coordinates to plot using track2 function

%hold on


%% September 2006

%figure(4)
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
contourfm(lat, lon, model(:,:,9)','linecolor','none');
colormap(cmocean('ice')); colorbar;
title ('2006 September Percent Sea Ice Concentration')

%% add coordinates to plot









