%% Code to compute monthly climatology of output variables - Total precipitation
% Anasuya Barik, IIT Delhi
% Run this code only for precip variable
% For future use IST files, for current use UTC files, convert into IST
% then use the code
var='tp'
%% JAN
% for Jan 1 2091 we have data from 00 UTC = 5 IST
% we have to add 5 NaN timesteps for 5 hrs i.e. 00 IST to 5 IST
NaN5(1:369,1:369,1:5)=NaN;
tp_jan_1_ist=cat(3,NaN5,tp_jan_1(:,:,1:739)); %add 5 hrs and remove extra 00 IST to % IST of feb 1 2091
% for Jan 1 2092 to 2100 we have data from 00 UTC = 5 IST
% we have to add 5 timesteps for 5 hrs i.e. 00 IST to 5 IST of Dec 31st of
% previous year
for i=2:10
        eval([' tp_jan_' num2str(i) '_ist=cat(3,tp_dec_' num2str(i-1) '(:,:,740:744),tp_jan_' num2str(i) '(:,:,1:739));']);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_jan_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
jan_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

janTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_jan_' num2str(i) '_ist;']);
end
%% FEB
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_feb_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
feb_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

febTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_feb_' num2str(i) '_ist;']);
end
%% MAR
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_mar_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
mar_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

marTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_mar_' num2str(i) '_ist;']);
end
%% APR
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_apr_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
apr_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

aprTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_apr_' num2str(i) '_ist;']);
end
%% MAY
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_may_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
may_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

mayTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_may_' num2str(i) '_ist;']);
end
%% JUN
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_jun_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
jun_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

junTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_jun_' num2str(i) '_ist;']);
end
%% JUL
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_jul_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
jul_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

julTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_jul_' num2str(i) '_ist;']);
end
%% AUG
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_aug_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
aug_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

augTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_aug_' num2str(i) '_ist;']);
end
%% SEP
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_sep_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
sep_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

sepTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_sep_' num2str(i) '_ist;']);
end
%% OCT
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_oct_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
oct_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

octTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_oct_' num2str(i) '_ist;']);
end
%% NOV
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_nov_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
nov_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

novTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_nov_' num2str(i) '_ist;']);
end
%% DEC
for i=1:10
   eval(['a' num2str(i) '=squeeze(tp_dec_' num2str(i) '_ist(:,:,744));']);   %compute mean
end
dec_clim=squeeze(nanmean(cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10),3));

decTS=cat(3,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);

for i=1:10
    eval(['clear a' num2str(i) ' tp_dec_' num2str(i) '_ist;']);
end
%% FINAL VARIABLES CLIMATOLOGY
precip=cat(3,jan_clim,feb_clim,mar_clim,apr_clim,may_clim,jun_clim,jul_clim,aug_clim,sep_clim,oct_clim,nov_clim,dec_clim);
% SAVE precip in Current_MonthlyC_precip.mat
%% FINAL VARIABLE TS
for i=1:10
       eval(['prec_' num2str(i) '=cat(3,janTS(:,:,' num2str(i) '),febTS(:,:,' num2str(i) '),marTS(:,:,' num2str(i) '),aprTS(:,:,' num2str(i) '),mayTS(:,:,' num2str(i) '),junTS(:,:,' num2str(i) '),julTS(:,:,' num2str(i) '),augTS(:,:,' num2str(i) '),sepTS(:,:,' num2str(i) '),octTS(:,:,' num2str(i) '),novTS(:,:,' num2str(i) '),decTS(:,:,' num2str(i) '));']);
end
% SAVE prec_1....prec_10 as anasuya_prec.mat
precip=cat(4,t2mMEAN_1,t2mMEAN_1,t2mMEAN_2,t2mMEAN_3,t2mMEAN_4,t2mMEAN_5,t2mMEAN_6,t2mMEAN_7,t2mMEAN_8,t2mMEAN_9,t2mMEAN_10)




