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
axesm('eqaazim','MapLatLimit',[39 90])
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

%plotting points

northlats = [40.1167450700000 48.82682957 57.1339786700000 66.2225247900000 76.7458920900000 85.7208071100000 76.7941226000000 72.3186627100000 68.51242111 63.0099327200000 51.7108645400000 40.7184320800000];
northlons = [0.980677569000000 -11.69970592 -2.77787811700000 23.2743067300000 65.4509795800000 98.5753209400000 122.740157700000 146.572205300000 -172.176549 165.301153400000 175.417468700000 179.473241800000];

freelats = [34.4433816200000 42.8544039600000 48.8268295700000 53.3480742000000 63.4579651500000 81.4791046100000 91.4382701100000 89.8256688200000 77.4370393800000 68.5124211100000 60.7354007500000];
freelons = [-10.5430441400000 -11.3106711900000 -11.6997059200000 -11.3818148500000 -6.38737350300000 11.7195746700000 39.9716716100000 144.822492100000 -177.428182200000 -172.176549000000 -167.083719900000];

plotm([northlats northlons], 'Marker', '.', 'Color', 'yellow', 'MarkerSize', 20, 'Linewidth', 2)
plotm([freelats freelons],'Marker', '.', 'Color', 'red', 'MarkerSize', 20, 'Linewidth', 2)

%plotting great circle line
%[latlin,lonlin] = track2('gc' ,40, 1, 41, 179);
%plotm(latlin,lonlin, 'LineSpec', '-r.', 'LineWidth', 10)







