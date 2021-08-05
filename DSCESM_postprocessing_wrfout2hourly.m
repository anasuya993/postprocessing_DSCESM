%% Code to extract data from WRF hourly outputs
% Anasuya Barik and SK Sahoo, IIT Delhi
% The WRF model was run for one month each, hence the raw files are of one
% month long
% This code is for temperature and precipitation. Make suitable changes for other variables.
% Other variables used are U10, V10, RHUM, SWDOWN, OLR, LHF, SHF

%% For Temperature & Precipitation
for i=1:10
  filename=sprintf('c%djan_wrfout.nc',i);
  temp=ncread(filename,'T2');
  eval(['t2m_jan_' num2str(i) '= temp;']);
  prec_c=ncread(filename,'RAINC');
  prec_nc=ncread(filename,'RAINNC');
  precip=prec_c+prec_nc;
  eval(['tp_jan_' num2str(i) '= precip;']);
  disp(i)
end