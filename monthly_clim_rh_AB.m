%% Code to compute monthly climatology of output variables - TEMPERATURE
% 2091-2100
% Run the code seperately for seperate variables
% For future use IST files, for current use UTC files, convert into IST
% then use the code
var='rh'
%% JAN
% NAVIGATE TO FOLDER HAVING JAN TEMP DATA
% addpath
% Load jan and dec files
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% for Jan 1 2091 we have data from 00 UTC = 5 IST
% we have to add 5 NaN timesteps for 5 hrs i.e. 00 IST to 5 IST
NaN5(1:369,1:369,1:5)=NaN;
rh_jan_1_ist=cat(3,NaN5,rh_jan_1(:,:,1:739)); %add 5 hrs and remove extra 00 IST to % IST of feb 1 2091
% for Jan 1 2092 to 2100 we have data from 00 UTC = 5 IST
% we have to add 5 timesteps for 5 hrs i.e. 00 IST to 5 IST of Dec 31st of
% previous year
for i=2:10
        eval([' rh_jan_' num2str(i) '_ist=cat(3,rh_dec_' num2str(i-1) '(:,:,740:744),rh_jan_' num2str(i) '(:,:,1:739));']);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('jan_rh_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_jan_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
jan_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

jan=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_jan_' num2str(i) '_ist;']);
end
%% FEB
load('feb_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_feb_' num2str(i) '_ist(:,:,1:672),3));']);   %compute mean
end
feb_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

feb=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_feb_' num2str(i) '_ist;']);
end
%% MAR
load('mar_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_mar_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
mar_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

mar=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_mar_' num2str(i) '_ist;']);
end
%% APR
load('apr_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_apr_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
end
apr_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

apr=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_apr_' num2str(i) '_ist;']);
end
%% MAY
load('may_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_may_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
may_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

may=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);


for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_may_' num2str(i) '_ist;']);
end
%% JUN
load('jun_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_jun_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
   
end
jun_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

jun=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);


for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_jun_' num2str(i) '_ist;']);
end
%% JUL
load('jul_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_jul_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
jul_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));


jul=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_jul_' num2str(i) '_ist;']);
end
%% AUG
load('aug_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_aug_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
aug_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

aug=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_aug_' num2str(i) '_ist;']);
end
%% SEPT
load('sep_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_sep_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
end
sep_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

sep=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_sep_' num2str(i) '_ist;']);
end
%% OCT
load('oct_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_oct_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
oct_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

oct=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_oct_' num2str(i) '_ist;']);
end
%% NOV
load('nov_rh_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_nov_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
end
nov_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

nov=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_nov_' num2str(i) '_ist;']);
end
%% DEC
load('dec_rh_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(rh_dec_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
end
dec_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

dec=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' rh_dec_' num2str(i) '_ist;']);
end

%% FINAL VARIABLES
rh_mean=cat(3,jan_mean,feb_mean,mar_mean,apr_mean,may_mean,jun_mean,jul_mean,aug_mean,sep_mean,oct_mean,nov_mean,dec_mean);
rh_max=cat(3,jan_max,feb_max,mar_max,apr_max,may_max,jun_max,jul_max,aug_max,sep_max,oct_max,nov_max,dec_max);
rh_min=cat(3,jan_min,feb_min,mar_min,apr_min,may_min,jun_min,jul_min,aug_min,sep_min,oct_min,nov_min,dec_min);

for i=1:10
       eval(['rhMEAN_' num2str(i) '=cat(3,jan(:,:,' num2str(i) '),feb(:,:,' num2str(i) '),mar(:,:,' num2str(i) '),apr(:,:,' num2str(i) '),may(:,:,' num2str(i) '),jun(:,:,' num2str(i) '),jul(:,:,' num2str(i) '),aug(:,:,' num2str(i) '),sep(:,:,' num2str(i) '),oct(:,:,' num2str(i) '),nov(:,:,' num2str(i) '),dec(:,:,' num2str(i) '));']);
       eval(['rhMAX_' num2str(i) '=cat(3,janmaxTS(:,:,' num2str(i) '),febmaxTS(:,:,' num2str(i) '),marmaxTS(:,:,' num2str(i) '),aprmaxTS(:,:,' num2str(i) '),maymaxTS(:,:,' num2str(i) '),junmaxTS(:,:,' num2str(i) '),julmaxTS(:,:,' num2str(i) '),augmaxTS(:,:,' num2str(i) '),sepmaxTS(:,:,' num2str(i) '),octmaxTS(:,:,' num2str(i) '),novmaxTS(:,:,' num2str(i) '),decmaxTS(:,:,' num2str(i) '));']);
       eval(['rhMIN_' num2str(i) '=cat(3,janminTS(:,:,' num2str(i) '),febminTS(:,:,' num2str(i) '),marminTS(:,:,' num2str(i) '),aprminTS(:,:,' num2str(i) '),mayminTS(:,:,' num2str(i) '),junminTS(:,:,' num2str(i) '),julminTS(:,:,' num2str(i) '),augminTS(:,:,' num2str(i) '),sepminTS(:,:,' num2str(i) '),octminTS(:,:,' num2str(i) '),novminTS(:,:,' num2str(i) '),decminTS(:,:,' num2str(i) '));']);       
end
rh_mean=cat(4,rhMEAN_1,rhMEAN_1,rhMEAN_2,rhMEAN_3,rhMEAN_4,rhMEAN_5,rhMEAN_6,rhMEAN_7,rhMEAN_8,rhMEAN_9,rhMEAN_10)







