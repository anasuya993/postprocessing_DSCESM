%% Conversion of UTC to IST for temp variable 
% Anasuya Barik, IIT Delhi
% NOTE : total size of matrices after conversion has to be same as before
% conversion
% This code is written for t2m
% REPEAT FOR OTHER VARIABLES
%% Jan 
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
%% Feb
% add 5 hrs of jan same year to feb 
for i=[2 6] %leap years
        eval([' t2m_feb_' num2str(i) '_ist=cat(3,t2m_jan_' num2str(i) '(:,:,740:744),t2m_feb_' num2str(i) '(:,:,1:661));']);
end
% total remains 666 timesteps i.e 00 IST to 18 IST on the 28th day. So, Max
% Min temp wont be affected

for i=[1 3:5 7:10] %non leap years
        eval([' t2m_feb_' num2str(i) '_ist=cat(3,t2m_jan_' num2str(i) '(:,:,740:744),t2m_feb_' num2str(i) '(:,:,1:667));']);
end
% all 28 days
%% March 
% 31 days so 369 x 369 x 744 would be size of one month
% for leap years
NaN5(1:369,1:369,1:5)=NaN;
for i=[2 6]
        eval([' t2m_mar_' num2str(i) '_ist=cat(3,NaN5,t2m_mar_' num2str(i) '(:,:,1:661));']);
end
% since last 5 hrs of any year in feb is not available, so we add NaN
%for non leap years
for i=[1 3:5 7:10]
        eval([' t2m_mar_' num2str(i) '_ist=cat(3,t2m_feb_' num2str(i) '(:,:,668:672),t2m_mar_' num2str(i) '(:,:,1:739));']);
end
%% Apr
% 30 days so 369 x 369 x 720 would be size of one month
for i=[1:10]
        eval([' t2m_apr_' num2str(i) '_ist=cat(3,t2m_mar_' num2str(i) '(:,:,740:744),t2m_apr_' num2str(i) '(:,:,1:715));']);
end
%% May
% 31 days so 369 x 369 x 744 would be size of one month
for i=[1:10]
        eval([' t2m_may_' num2str(i) '_ist=cat(3,t2m_apr_' num2str(i) '(:,:,716:720),t2m_may_' num2str(i) '(:,:,1:739));']);
end
%% Jun
% 30 days so 369 x 369 x 720 would be size of one month
for i=[1:10]
        eval([' t2m_jun_' num2str(i) '_ist=cat(3,t2m_may_' num2str(i) '(:,:,740:744),t2m_jun_' num2str(i) '(:,:,1:715));']);
end
%% Jul
% 31 days so 369 x 369 x 744 would be size of one month
for i=[1:10]
        eval([' t2m_jul_' num2str(i) '_ist=cat(3,t2m_jun_' num2str(i) '(:,:,716:720),t2m_jul_' num2str(i) '(:,:,1:739));']);
end
%% Aug
% 31 days so 369 x 369 x 744 would be size of one month
for i=[1:10]
        eval([' t2m_aug_' num2str(i) '_ist=cat(3,t2m_jul_' num2str(i) '(:,:,740:744),t2m_aug_' num2str(i) '(:,:,1:739));']);
end
%% Sep
% 30 days so 369 x 369 x 720 would be size of one month
for i=[1:10]
        eval([' t2m_sep_' num2str(i) '_ist=cat(3,t2m_aug_' num2str(i) '(:,:,740:744),t2m_sep_' num2str(i) '(:,:,1:715));']);
end
%% Oct
% 31 days so 369 x 369 x 744 would be size of one month
for i=[1:10]
        eval([' t2m_oct_' num2str(i) '_ist=cat(3,t2m_sep_' num2str(i) '(:,:,716:720),t2m_oct_' num2str(i) '(:,:,1:739));']);
end
%% Nov
% 30 days so 369 x 369 x 720 would be size of one month
for i=[1:10]
        eval([' t2m_nov_' num2str(i) '_ist=cat(3,t2m_oct_' num2str(i) '(:,:,740:744),t2m_nov_' num2str(i) '(:,:,1:715));']);
end
%% Dec
% 31 days so 369 x 369 x 744 would be size of one month
for i=[1:10]
        eval([' t2m_dec_' num2str(i) '_ist=cat(3,t2m_nov_' num2str(i) '(:,:,716:720),t2m_dec_' num2str(i) '(:,:,1:739));']);
end
% last five timesteps of i=10 i.e 2100 - 740:744
% 00 IST to 5 IST of 1st jan 2101 will not be used

















