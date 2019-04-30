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
mvector= 3:12:1140 ;
marchs= model(:,:,mvector);
%average all the marchs
meanmarchs=mean(marchs,[1 2],'omitnan');
meanmarchs1=squeeze(meanmarchs);
% make a vector of the years
years = 2006:2100;
%septembers
sep = NaN([size(lat, 1) size(lon, 1) 93]);
svector= 9:12:1140 ;
sep= model(:,:,svector);
%average all the marchs
meansep=mean(sep,[1 2],'omitnan');
modelsep86=squeeze(meansep);
%% make a data set for shreya
historical=ncread('historical.nc', 'sic');
lat=ncread('historical.nc', 'lat');
lon=ncread('historical.nc', 'lon');
timeh= ncread('historical.nc', 'time');

% make a vector of the years
yearsh = 1900:2005;
%septembers
sephist = NaN([size(lat, 1) size(lon, 1) 106]);
svector= 9:12:1272 ;
sephist= historical(:,:,svector);
%average all the marchs
meansephist=mean(sephist,[1 2],'omitnan');
historical2d=squeeze(meansephist);
%%
% same thing for rpc 2.6
model26=ncread('RPc2.6.nc', 'sic');
lat=ncread('RPc2.6.nc', 'lat');
lon=ncread('RPc2.6.nc', 'lon');
time= ncread('RPc2.6.nc', 'time');

% make a vector of the years
years = 2006:2100;
%septembers
sepmod = NaN([size(lat, 1) size(lon, 1) 93]);
svector= 9:12:1140 ;
sep26= model26(:,:,svector);
%average all the marchs
meansep26=mean(sep26,[1 2],'omitnan');
meanmodel26=squeeze(meansep26);
%%
%mat2dataset(historical 2d);
histyear= [historical2d yearsh']; 
modelyear= [meanmodel26 years'];
bothyear = [histyear; modelyear];
add= NaN([1 106]);
model86= [add'; modelsep86];

allyear= [model86 bothyear];

df1=mat2dataset(allyear, 'VarNames',{'SeaIce2_6', 'hist_SeaIce8_6', 'Year'});
export(df1,'File','Hist_2.6model8.5.csv','Delimiter',',')
%yearsh
%meanmodel26 modelsep86
%% figure for marchs
figure ; clf
subplot(1,2,1)
plot(years,meanmarchs1)
title("Average March Ice Concentration")
xlabel("Year")
ylabel("Average Sea Ice Concentration") 
subplot(1,2,2)
plot(years,meansep1)
title("Average September Ice Concentration")
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
