%% Code to compute monthly time series and climatology of output variables - TEMPERATURE
% This code is for tempertaure. Make suitable chnages for other variables
% The monthly times series creates 120 time steps for each variable
% The monthly climatology creates 12 times steps for each variable
var='temp'
%% JAN
% NAVIGATE TO FOLDER HAVING JAN temp DATA
% addpath
% Load jan and dec files
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% for Jan 1 2091 we have data from 00 UTC = 5 IST
% we have to add 5 NaN timesteps for 5 hrs i.e. 00 IST to 5 IST
NaN5(1:369,1:369,1:5)=NaN;
temp_jan_1_ist=cat(3,NaN5,temp_jan_1(:,:,1:739)); %add 5 hrs and remove extra 00 IST to % IST of feb 1 2091
% for Jan 1 2092 to 2100 we have data from 00 UTC = 5 IST
% we have to add 5 timesteps for 5 hrs i.e. 00 IST to 5 IST of Dec 31st of
% previous year
for i=2:10
        eval([' temp_jan_' num2str(i) '_ist=cat(3,temp_dec_' num2str(i-1) '(:,:,740:744),temp_jan_' num2str(i) '(:,:,1:739));']);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('jan_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_jan_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
jan_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3)); %monthly mean for 10 years

jan=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10); % all 10 years

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_jan_' num2str(i) '_ist;']);
end
%% FEB
load('feb_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_feb_' num2str(i) '_ist(:,:,1:672),3));']);   %compute mean
end
feb_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

feb=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_feb_' num2str(i) '_ist;']);
end
%% MAR
load('mar_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_mar_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
mar_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

mar=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_mar_' num2str(i) '_ist;']);
end
%% APR
load('apr_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_apr_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
end
apr_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

apr=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_apr_' num2str(i) '_ist;']);
end
%% MAY
load('may_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_may_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
may_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

may=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);


for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_may_' num2str(i) '_ist;']);
end
%% JUN
load('jun_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_jun_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
   
end
jun_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

jun=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);


for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_jun_' num2str(i) '_ist;']);
end
%% JUL
load('jul_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_jul_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
jul_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));


jul=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_jul_' num2str(i) '_ist;']);
end
%% AUG
load('aug_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_aug_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
aug_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

aug=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_aug_' num2str(i) '_ist;']);
end
%% SEPT
load('sep_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_sep_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
end
sep_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

sep=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_sep_' num2str(i) '_ist;']);
end
%% OCT
load('oct_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_oct_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
oct_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

oct=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_oct_' num2str(i) '_ist;']);
end
%% NOV
load('nov_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_nov_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
end
nov_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

nov=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_nov_' num2str(i) '_ist;']);
end
%% DEC
load('dec_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(temp_dec_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
dec_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

dec=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' temp_dec_' num2str(i) '_ist;']);
end

%% FINAL VARIABLES
temp_mean=cat(3,jan_mean,feb_mean,mar_mean,apr_mean,may_mean,jun_mean,jul_mean,aug_mean,sep_mean,oct_mean,nov_mean,dec_mean);
% This is the Time series variable

for i=1:10
       eval(['tempMEAN_' num2str(i) '=cat(3,jan(:,:,' num2str(i) '),feb(:,:,' num2str(i) '),mar(:,:,' num2str(i) '),apr(:,:,' num2str(i) '),may(:,:,' num2str(i) '),jun(:,:,' num2str(i) '),jul(:,:,' num2str(i) '),aug(:,:,' num2str(i) '),sep(:,:,' num2str(i) '),oct(:,:,' num2str(i) '),nov(:,:,' num2str(i) '),dec(:,:,' num2str(i) '));']);
end
temp_mean=cat(4,tempMEAN_1,tempMEAN_1,tempMEAN_2,tempMEAN_3,tempMEAN_4,tempMEAN_5,tempMEAN_6,tempMEAN_7,tempMEAN_8,tempMEAN_9,tempMEAN_10)
% This is the Climatology variable

% Save in suitable mat files and convert into nc files




