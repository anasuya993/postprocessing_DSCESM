%% Code to compute monthly climatology of output variables - TEMPERATURE
% Anasuya Barik, IIT Delhi
% Run the code seperately for seperate variables
% For future use IST files, for current use UTC files, convert into IST
% then use the code
var='t2m'
%% JAN
% NAVIGATE TO FOLDER HAVING JAN TEMP DATA
% addpath
% Load jan and dec files
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% for Jan 1 2091 we have data from 00 UTC = 5 IST
% we have to add 5 NaN timesteps for 5 hrs i.e. 00 IST to 5 IST
NaN5(1:369,1:369,1:5)=NaN;
t2m_jan_1_ist=cat(3,NaN5,t2m_jan_1(:,:,1:739)); %add 5 hrs and remove extra 00 IST to % IST of feb 1 2091
% for Jan 1 2092 to 2100 we have data from 00 UTC = 5 IST
% we have to add 5 timesteps for 5 hrs i.e. 00 IST to 5 IST of Dec 31st of
% previous year
for i=2:10
        eval([' t2m_jan_' num2str(i) '_ist=cat(3,t2m_dec_' num2str(i-1) '(:,:,740:744),t2m_jan_' num2str(i) '(:,:,1:739));']);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('jan_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_jan_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_jan_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_jan_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute min
end
jan_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
jan_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
jan_min=squeeze(nanmean(cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10),3));

jan=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
janmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
janminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_jan_' num2str(i) '_ist;']);
end
%% FEB
load('feb_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_feb_' num2str(i) '_ist(:,:,1:672),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_feb_' num2str(i) '_ist(:,:,1:672),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_feb_' num2str(i) '_ist(:,:,1:672),[],3));']);   %compute min
end
feb_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
feb_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
feb_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));


feb=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
febmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
febminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_feb_' num2str(i) '_ist;']);
end
%% MAR
load('mar_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_mar_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_mar_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_mar_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute min
end
mar_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
mar_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
mar_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));


mar=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
marmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
marminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_mar_' num2str(i) '_ist;']);
end
%% APR
load('apr_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_apr_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_apr_' num2str(i) '_ist(:,:,1:720),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_apr_' num2str(i) '_ist(:,:,1:720),[],3));']);   %compute min
end
apr_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
apr_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
apr_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));


apr=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
aprmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
aprminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_apr_' num2str(i) '_ist;']);
end
%% MAY
load('may_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_may_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_may_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_may_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute min
end
may_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
may_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
may_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

may=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
maymaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
mayminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_may_' num2str(i) '_ist;']);
end
%% JUN
load('jun_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_jun_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_jun_' num2str(i) '_ist(:,:,1:720),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_jun_' num2str(i) '_ist(:,:,1:720),[],3));']);   %compute min
end
jun_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
jun_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
jun_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

jun=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
junmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
junminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_jun_' num2str(i) '_ist;']);
end
%% JUL
load('jul_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_jul_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_jul_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_jul_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute min
end
jul_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
jul_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
jul_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));


jul=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
julmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
julminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_jul_' num2str(i) '_ist;']);
end
%% AUG
load('aug_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_aug_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_aug_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_aug_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute min
end
aug_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
aug_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
aug_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));


aug=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
augmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
augminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_aug_' num2str(i) '_ist;']);
end
%% SEPT
load('sep_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_sep_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_sep_' num2str(i) '_ist(:,:,1:720),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_sep_' num2str(i) '_ist(:,:,1:720),[],3));']);   %compute min
end
sep_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
sep_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
sep_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

sep=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
sepmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
sepminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_sep_' num2str(i) '_ist;']);
end
%% OCT
load('oct_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_oct_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_oct_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_oct_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute min
end
oct_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
oct_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
oct_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

oct=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
octmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
octminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_oct_' num2str(i) '_ist;']);
end
%% NOV
load('nov_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_nov_' num2str(i) '_ist(:,:,1:720),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_nov_' num2str(i) '_ist(:,:,1:720),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_nov_' num2str(i) '_ist(:,:,1:720),[],3));']);   %compute min
end
nov_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
nov_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
nov_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

nov=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
novmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
novminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_nov_' num2str(i) '_ist;']);
end
%% DEC
load('dec_temp_ist.mat')
for i=1:10
   eval(['a' num2str(i) '=squeeze(nanmean(t2m_dec_' num2str(i) '_ist(:,:,1:744),3));']);   %compute mean
   eval(['b' num2str(i) '=squeeze(max(t2m_dec_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute max
   eval(['c' num2str(i) '=squeeze(min(t2m_dec_' num2str(i) '_ist(:,:,1:744),[],3));']);   %compute min
end
dec_mean=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));
dec_max=squeeze(nanmean(cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10),3));
dec_min=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

dec=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
decmaxTS=cat(3,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10);
decminTS=cat(3,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10);

for i=1:10
    eval(['clear a' num2str(i) ' b' num2str(i) ' c' num2str(i) ' t2m_dec_' num2str(i) '_ist;']);
end

%% FINAL VARIABLES
t2m_mean=cat(3,jan_mean,feb_mean,mar_mean,apr_mean,may_mean,jun_mean,jul_mean,aug_mean,sep_mean,oct_mean,nov_mean,dec_mean);
t2m_max=cat(3,jan_max,feb_max,mar_max,apr_max,may_max,jun_max,jul_max,aug_max,sep_max,oct_max,nov_max,dec_max);
t2m_min=cat(3,jan_min,feb_min,mar_min,apr_min,may_min,jun_min,jul_min,aug_min,sep_min,oct_min,nov_min,dec_min);

for i=1:10
       eval(['t2mMEAN_' num2str(i) '=cat(3,jan(:,:,' num2str(i) '),feb(:,:,' num2str(i) '),mar(:,:,' num2str(i) '),apr(:,:,' num2str(i) '),may(:,:,' num2str(i) '),jun(:,:,' num2str(i) '),jul(:,:,' num2str(i) '),aug(:,:,' num2str(i) '),sep(:,:,' num2str(i) '),oct(:,:,' num2str(i) '),nov(:,:,' num2str(i) '),dec(:,:,' num2str(i) '));']);
       eval(['t2mMAX_' num2str(i) '=cat(3,janmaxTS(:,:,' num2str(i) '),febmaxTS(:,:,' num2str(i) '),marmaxTS(:,:,' num2str(i) '),aprmaxTS(:,:,' num2str(i) '),maymaxTS(:,:,' num2str(i) '),junmaxTS(:,:,' num2str(i) '),julmaxTS(:,:,' num2str(i) '),augmaxTS(:,:,' num2str(i) '),sepmaxTS(:,:,' num2str(i) '),octmaxTS(:,:,' num2str(i) '),novmaxTS(:,:,' num2str(i) '),decmaxTS(:,:,' num2str(i) '));']);
       eval(['t2mMIN_' num2str(i) '=cat(3,janminTS(:,:,' num2str(i) '),febminTS(:,:,' num2str(i) '),marminTS(:,:,' num2str(i) '),aprminTS(:,:,' num2str(i) '),mayminTS(:,:,' num2str(i) '),junminTS(:,:,' num2str(i) '),julminTS(:,:,' num2str(i) '),augminTS(:,:,' num2str(i) '),sepminTS(:,:,' num2str(i) '),octminTS(:,:,' num2str(i) '),novminTS(:,:,' num2str(i) '),decminTS(:,:,' num2str(i) '));']);       
end



