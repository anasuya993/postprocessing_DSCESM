%% Code to compute daily Time Series
% Anasuya Barik, IIT Delhi

% Use IST converted files only
%% For Jan
load('jan_temp.mat')
load('dec_temp.mat')
NaN5(1:369,1:369,1:5)=NaN;
t2m_jan_1_ist=cat(3,NaN5,t2m_jan_1(:,:,1:739)); %add 5 hrs and remove extra 00 IST to % IST of feb 1 2091
% for Jan 1 2092 to 2100 we have data from 00 UTC = 5 IST
% we have to add 5 timesteps for 5 hrs i.e. 00 IST to 5 IST of Dec 31st of
% previous year
for i=2:10
        eval([' t2m_jan_' num2str(i) '_ist=cat(3,t2m_dec_' num2str(i-1) '(:,:,740:744),t2m_jan_' num2str(i) '(:,:,1:739));']);
end
for i=1:10
   eval(['aa=squeeze(t2m_jan_' num2str(i) '_ist(:,:,1:744));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,31);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_jan' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_jan_' num2str(i) '_ist  t2m_dec_' num2str(i) ';']);
end
%% For FEB
load('feb_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_feb_' num2str(i) '_ist(:,:,1:672));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,28);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_feb' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_feb_' num2str(i) '_ist  t2m_jan_' num2str(i) ';']);
end
%% For MAR
load('feb_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_mar_' num2str(i) '_ist(:,:,1:744));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,31);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_mar' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_mar_' num2str(i) '_ist  t2m_feb_' num2str(i) ';']);
end
%% For APR
load('apr_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_feb_' num2str(i) '_ist(:,:,1:720));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,30);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_apr' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_apr_' num2str(i) '_ist  t2m_mar_' num2str(i) ';']);
end
%% For MAY
load('may_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_may_' num2str(i) '_ist(:,:,1:744));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,31);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_may' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_may_' num2str(i) '_ist  t2m_apr_' num2str(i) ';']);
end
%% For JUN
load('jun_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_jun_' num2str(i) '_ist(:,:,1:720));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,30);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_jun' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_jun_' num2str(i) '_ist  t2m_may_' num2str(i) ';']);
end
%% For JUL
load('jul_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_jul_' num2str(i) '_ist(:,:,1:744));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,31);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_jul' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_jul_' num2str(i) '_ist  t2m_jun_' num2str(i) ';']);
end
%% For AUG
load('aug_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_aug_' num2str(i) '_ist(:,:,1:744));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,31);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_aug' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_aug_' num2str(i) '_ist  t2m_jul_' num2str(i) ';']);
end
%% For SEP
load('sep_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_sep_' num2str(i) '_ist(:,:,1:720));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,30);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_sep' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_sep_' num2str(i) '_ist  t2m_aug_' num2str(i) ';']);
end
%% For OCT
load('oct_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_oct_' num2str(i) '_ist(:,:,1:744));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,31);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_oct' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_oct_' num2str(i) '_ist  t2m_sep_' num2str(i) ';']);
end
%% For NOV
load('nov_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_nov_' num2str(i) '_ist(:,:,1:720));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,30);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_nov' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
for i=1:10
    eval(['clear t2m_nov_' num2str(i) '_ist  t2m_oct_' num2str(i) ';']);
end

%% For DEC
load('dec_temp.mat')
for i=1:10
   eval(['aa=squeeze(t2m_dec_' num2str(i) '_ist(:,:,1:744));']);   %checks whether the matrix size after utc-ist conversion is correct or not
   bb=reshape(aa,369,369,24,31);
   dailymean=squeeze(nanmean(bb,3));                    %computing daily average temp
   eval(['daily_avg_dec' num2str(i) '= dailymean;']);
   clear aa bb dailymean 
   disp(i)
end
%% Computing daily TS year wise
temp2006=cat(3, daily_avg_jan1, daily_avg_feb1, daily_avg_mar1, daily_avg_apr1, daily_avg_may1, daily_avg_jun1, daily_avg_jul1, daily_avg_aug1, daily_avg_sep1, daily_avg_oct1, daily_avg_nov1, daily_avg_dec1); 
temp2007=cat(3, daily_avg_jan2, daily_avg_feb2, daily_avg_mar2, daily_avg_apr2, daily_avg_may2, daily_avg_jun2, daily_avg_jul2, daily_avg_aug2, daily_avg_sep2, daily_avg_oct2, daily_avg_nov2, daily_avg_dec2);
temp2008=cat(3, daily_avg_jan3, daily_avg_feb3, daily_avg_mar3, daily_avg_apr3, daily_avg_may3, daily_avg_jun3, daily_avg_jul3, daily_avg_aug3, daily_avg_sep3, daily_avg_oct3, daily_avg_nov3, daily_avg_dec3);
temp2009=cat(4, daily_avg_jan4, daily_avg_feb4, daily_avg_mar4, daily_avg_apr4, daily_avg_may4, daily_avg_jun4, daily_avg_jul4, daily_avg_aug4, daily_avg_sep4, daily_avg_oct4, daily_avg_nov4, daily_avg_dec4);
temp2010=cat(5, daily_avg_jan5, daily_avg_feb5, daily_avg_mar5, daily_avg_apr5, daily_avg_may5, daily_avg_jun5, daily_avg_jul5, daily_avg_aug5, daily_avg_sep5, daily_avg_oct5, daily_avg_nov5, daily_avg_dec5);
temp2011=cat(6, daily_avg_jan6, daily_avg_feb6, daily_avg_mar6, daily_avg_apr6, daily_avg_may6, daily_avg_jun6, daily_avg_jul6, daily_avg_aug6, daily_avg_sep6, daily_avg_oct6, daily_avg_nov6, daily_avg_dec6);
temp2012=cat(7, daily_avg_jan7, daily_avg_feb7, daily_avg_mar7, daily_avg_apr7, daily_avg_may7, daily_avg_jun7, daily_avg_jul7, daily_avg_aug7, daily_avg_sep7, daily_avg_oct7, daily_avg_nov7, daily_avg_dec7);
temp2013=cat(8, daily_avg_jan8, daily_avg_feb8, daily_avg_mar8, daily_avg_apr8, daily_avg_may8, daily_avg_jun8, daily_avg_jul8, daily_avg_aug8, daily_avg_sep8, daily_avg_oct8, daily_avg_nov8, daily_avg_dec8);
temp2014=cat(9, daily_avg_jan9, daily_avg_feb9, daily_avg_mar9, daily_avg_apr9, daily_avg_may9, daily_avg_jun9, daily_avg_jul9, daily_avg_aug9, daily_avg_sep9, daily_avg_oct9, daily_avg_nov9, daily_avg_dec9);
temp2015=cat(10, daily_avg_jan10, daily_avg_feb10, daily_avg_mar10, daily_avg_apr10, daily_avg_may10, daily_avg_jun10, daily_avg_jul10, daily_avg_aug10, daily_avg_sep10, daily_avg_oct10, daily_avg_nov10, daily_avg_dec10);

% FOR Current_DailyTS_temp
t2m_mean= cat(4, temp_2006, temp_2007, temp_2008, temp_2009, temp_2010, temp_2011, temp_2012, temp_2013, temp_2014, temp_2015);
% save into Current_DailyTS_temp.mat



