%poles 
%%modeled data 2006-2100
%  CCSM4 at RCP 8.5
% look at attributes
model=ncread('projected_ice.nc', 'sic');
lat=ncread('projected_ice.nc', 'lat');
lon=ncread('projected_ice.nc', 'lon');
time= ncread('projected_ice.nc', 'time');
%% give real dates to time
timeyear= time./365
%winter and summer value september and march 

%%
marchs = NaN([size(lat, 1) size(lon, 1) 93]);
vector= 3:12:1140 ;
marchs= model(:,:,vector);
%average all the marchs
meanmarchs=mean(marchs,[1 2],'omitnan');
meanmarchs1=squeeze(meanmarchs);
% make a vector of the years
years = 2006:2100;
%% figure for marchs
figure 1; clf
plot(years,meanmarchs1)
title("Average Ice Concentration")
xlabel("Year")
ylabel("Average Sea Ice Concentration") 
     
%% figure from Jan 2006
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
title ('2006 January Percent Sea Ice Concentration')

%% 2006 March

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

%% September 2006

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

%% 2050 March

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
contourfm(lat, lon, model(:,:,531)','linecolor','none');
colormap(cmocean('ice')); colorbar;
title ('2050 March Percent Sea Ice Concentration')

%% 2050 Sept

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
contourfm(lat, lon, model(:,:,537)','linecolor','none');
colormap(cmocean('ice')); colorbar;
title ('2050 September Percent Sea Ice Concentration')

%% 2080 March

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
contourfm(lat, lon, model(:,:,891)','linecolor','none');
colormap(cmocean('ice')); colorbar;
title ('2080 March Percent Sea Ice Concentration')

%% 2080 Sept

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
contourfm(lat, lon, model(:,:,897)','linecolor','none');
colormap(cmocean('ice')); colorbar;
title ('2080 September Percent Sea Ice Concentration')
