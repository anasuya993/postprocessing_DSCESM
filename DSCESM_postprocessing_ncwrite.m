%% To write the Daily DSCESM variables in an NC file
% Anasuya Barik, IIT Delhi
% For other variables replace 'lhf' with variable name 
% This code is written for both current and end century
%% Load common files
% make sure lat and lon and time are present in workspace
load('lat_lon.mat')
doy=1:365;
year=2006:2015;
load('Current_DailyTS_lhf.mat')
%% Reading shapefile / load 369x369mask.mat
ss=shaperead('india-osm.shp');
[A,B]=meshgrid(lon,lat);
[in,on]=inpolygon(A,B,[ss.X],[ss.Y]);
mask=nan(size(A));
mask(in)=0;mask(on)=0;      
%% Correct orientations
%correct orientation of wrf data
for i=1:10
    for j=1:365
        lhf_1(:,:,j,i)=lhf(:,:,j,i)';
    end
end
% Check if data is oriented properly or not
lhf_2=flipud(lhf_1)+mask;
for i=1:10
    for j=1:365
        lhf(:,:,j,i)=lhf_2(:,:,j,i)';
    end
end
%% Verify the variable
whos lhf
pcolor(lon,lat,lhf(:,:,176,5)); shading interp
 
%% Write in netcdf file
nccreate('Current_DailyTS_lhf.nc','lon','Dimensions',{'lon',369},'Datatype','double');
nccreate('Current_DailyTS_lhf.nc','lat','Dimensions',{'lat',369},'Datatype','double');
nccreate('Current_DailyTS_lhf.nc','doy','Dimensions',{'doy',365},'Datatype','double');
nccreate('Current_DailyTS_lhf.nc','year','Dimensions',{'year',10},'Datatype','double');
nccreate('Current_DailyTS_lhf.nc','lhf','Dimensions',{'lon',369,'lat',369,'doy',365,'year',10},'Datatype','double');
 
ncwrite('Current_DailyTS_lhf.nc','lon',lon);
ncwrite('Current_DailyTS_lhf.nc','lat',lat);
ncwrite('Current_DailyTS_lhf.nc','doy',doy);
ncwrite('Current_DailyTS_lhf.nc','year',year);
ncwrite('Current_DailyTS_lhf.nc','lhf',lhf);
 
ncwriteatt('Current_DailyTS_lhf.nc','lon','description','Longitude, West is negative');
ncwriteatt('Current_DailyTS_lhf.nc','lon','units','degree_east');
 
ncwriteatt('Current_DailyTS_lhf.nc','lat','description','Latitude, South is negative');
ncwriteatt('Current_DailyTS_lhf.nc','lat','units','degree_north');
 
ncwriteatt('Current_DailyTS_lhf.nc','doy','description','Day of year');
ncwriteatt('Current_DailyTS_lhf.nc','doy','calender','gregorian');
 
ncwriteatt('Current_DailyTS_lhf.nc','year','description','Year');
 
ncwriteatt('Current_DailyTS_lhf.nc','lhf','description','Latent heat flux at surface, averaged over day');
ncwriteatt('Current_DailyTS_lhf.nc','lhf','units','W m-2');
ncwriteatt('Current_DailyTS_lhf.nc','lhf','coordinates','lon x lat x doy x year');
 
%% check nc file
clear lhf
aa=ncread('Current_DailyTS_lhf.nc', 'lhf');
pcolor(lon,lat,aa(:,:,176,5)'); shading interp
 
%% 
lhf_2=flipud(lhf_1);
clear lhf
for j=1:365
    lhf(:,:,j)=lhf_2(:,:,j)';
end
 
nccreate('CESM_WRF_LHF_daily_2014.nc','lon','Dimensions',{'lon',369},'Datatype','double');
nccreate('CESM_WRF_LHF_daily_2014.nc','lat','Dimensions',{'lat',369},'Datatype','double');
nccreate('CESM_WRF_LHF_daily_2014.nc','doy','Dimensions',{'doy',365},'Datatype','double');
nccreate('CESM_WRF_LHF_daily_2014.nc','year','Dimensions',{'year',10},'Datatype','double');
nccreate('CESM_WRF_LHF_daily_2014.nc','lhf','Dimensions',{'lon',369,'lat',369,'doy',365},'Datatype','double');
 
ncwrite('CESM_WRF_LHF_daily_2014.nc','lon',lon);
ncwrite('CESM_WRF_LHF_daily_2014.nc','lat',lat);
ncwrite('CESM_WRF_LHF_daily_2014.nc','doy',doy);
ncwrite('CESM_WRF_LHF_daily_2014.nc','year',year);
ncwrite('CESM_WRF_LHF_daily_2014.nc','lhf',lhf);
 
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lon','description','Longitude, West is negative');
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lon','units','degree_east');
 
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lat','description','Latitude, South is negative');
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lat','units','degree_north');
 
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','doy','description','Day of year');
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','doy','calender','gregorian');
 
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','year','description','Year');
 
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lhf','description','Relative Humidity at 2m, averaged over day');
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lhf','units','%');
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lhf','coordinates','lon x lat x doy x year');
 
%% To write the Daily LHF variables in an NC file
%%%%%%%%%%%%%%%%%% TEMP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% make sure lat and lon and time are present in workspace
load('lat_lon.mat')
doy=1:365;
year=2091:2100;
load('EndCenturyRCP85_DailyTS_lhf.mat')
 
%% Reading shapefile / load 369x369mask.mat
ss=shaperead('india-osm.shp');
[A,B]=meshgrid(lon,lat);
[in,on]=inpolygon(A,B,[ss.X],[ss.Y]);
mask=nan(size(A));
mask(in)=0;mask(on)=0;
        %OR
load('369369mask.mat')       
%% Correct orientations
%newmask=flipud(mask);
 
%correct orientation of wrf data
for i=1:10
    for j=1:365
        lhf_1(:,:,j,i)=lhf(:,:,j,i)';
    end
end
% Check if data is oriented properly or not
lhf_2=flipud(lhf_1)+mask;
for i=1:10
    for j=1:365
        lhf(:,:,j,i)=lhf_2(:,:,j,i)';
    end
end
whos lhf
pcolor(lon,lat,lhf(:,:,176,5)); shading interp
 
%%
nccreate('EndCenturyRCP85_DailyTS_lhf.nc','lon','Dimensions',{'lon',369},'Datatype','double');
nccreate('EndCenturyRCP85_DailyTS_lhf.nc','lat','Dimensions',{'lat',369},'Datatype','double');
nccreate('EndCenturyRCP85_DailyTS_lhf.nc','doy','Dimensions',{'doy',365},'Datatype','double');
nccreate('EndCenturyRCP85_DailyTS_lhf.nc','year','Dimensions',{'year',10},'Datatype','double');
nccreate('EndCenturyRCP85_DailyTS_lhf.nc','lhf','Dimensions',{'lon',369,'lat',369,'doy',365,'year',10},'Datatype','double');
 
ncwrite('EndCenturyRCP85_DailyTS_lhf.nc','lon',lon);
ncwrite('EndCenturyRCP85_DailyTS_lhf.nc','lat',lat);
ncwrite('EndCenturyRCP85_DailyTS_lhf.nc','doy',doy);
ncwrite('EndCenturyRCP85_DailyTS_lhf.nc','year',year);
ncwrite('EndCenturyRCP85_DailyTS_lhf.nc','lhf',lhf);
 
ncwriteatt('EndCenturyRCP85_DailyTS_lhf.nc','lon','description','Longitude, West is negative');
ncwriteatt('EndCenturyRCP85_DailyTS_lhf.nc','lon','units','degree_east');
 
ncwriteatt('EndCenturyRCP85_DailyTS_lhf.nc','lat','description','Latitude, South is negative');
ncwriteatt('EndCenturyRCP85_DailyTS_lhf.nc','lat','units','degree_north');
 
ncwriteatt('EndCenturyRCP85_DailyTS_lhf.nc','doy','description','Day of year');
ncwriteatt('EndCenturyRCP85_DailyTS_lhf.nc','doy','calender','gregorian');
 
ncwriteatt('EndCenturyRCP85_DailyTS_lhf.nc','year','description','Year');
 
ncwriteatt('EndCenturyRCP85_DailyTS_lhf.nc','lhf','description','Latent heat flux at surface, averaged over day');
ncwriteatt('EndCenturyRCP85_DailyTS_lhf.nc','lhf','units','W m-2');
ncwriteatt('EndCenturyRCP85_DailyTS_lhf.nc','lhf','coordinates','lon x lat x doy x year');
 
%% check nc file
clear lhf
aa=ncread('EndCenturyRCP85_DailyTS_lhf.nc', 'lhf');
pcolor(lon,lat,aa(:,:,176,5)'); shading interp
 
%% 
lhf_2=flipud(lhf_1);
clear lhf
for j=1:365
    lhf(:,:,j)=lhf_2(:,:,j)';
end
 
nccreate('CESM_WRF_LHF_daily_2014.nc','lon','Dimensions',{'lon',369},'Datatype','double');
nccreate('CESM_WRF_LHF_daily_2014.nc','lat','Dimensions',{'lat',369},'Datatype','double');
nccreate('CESM_WRF_LHF_daily_2014.nc','doy','Dimensions',{'doy',365},'Datatype','double');
nccreate('CESM_WRF_LHF_daily_2014.nc','year','Dimensions',{'year',10},'Datatype','double');
nccreate('CESM_WRF_LHF_daily_2014.nc','lhf','Dimensions',{'lon',369,'lat',369,'doy',365},'Datatype','double');
 
ncwrite('CESM_WRF_LHF_daily_2014.nc','lon',lon);
ncwrite('CESM_WRF_LHF_daily_2014.nc','lat',lat);
ncwrite('CESM_WRF_LHF_daily_2014.nc','doy',doy);
ncwrite('CESM_WRF_LHF_daily_2014.nc','year',year);
ncwrite('CESM_WRF_LHF_daily_2014.nc','lhf',lhf);
 
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lon','description','Longitude, West is negative');
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lon','units','degree_east');
 
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lat','description','Latitude, South is negative');
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lat','units','degree_north');
 
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','doy','description','Day of year');
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','doy','calender','gregorian');
 
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','year','description','Year');
 
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lhf','description','Relative Humidity at 2m, averaged over day');
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lhf','units','%');
ncwriteatt('CESM_WRF_LHF_daily_2014.nc','lhf','coordinates','lon x lat x doy x year');
 
 
 
 
 


 
 


