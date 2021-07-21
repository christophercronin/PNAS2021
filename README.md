# PNAS2021
Data and Code for "Excess Mortality from COVID and non-COVID Causes in Minority Populations" by Cronin and Evans, 2021, PNAS

The files are in three subfolders.  Each is described in the text below



\Main_results   -- this generates the results for Tables 1 and 2 and Figure 1
	
  lyl_by_age_race_sex.csv – CSV file that has expected remaining life years left by age, sex, and race/ethnicity

  AH_Excess_Deaths_by_Sex__Age__and_Race.csv – data from the CDC COVID web page that has COVID and non-COVID deaths from 2015.

  pop_20xx.csv – CSV data for US population, January of 20xx where xx=2015-2020.  The data is by age, sex, race/ethnicity.

  read_pop_data_for_groups_1.do.txt – stata do file that reads the pop_20xx data and produces stat data pop1520_yy.dta -- that have population by single ages for 2015-2020 for group yy.  You should run this first.  
		hf – Hispanic female
		hm – Hispanic male
		nhbf – non-Hispanic black female
		nhbm – non-Hispanic black male
		nhwf -- non-Hispanic white female
		nhwm -- non-Hispanic white male

  read_pop_data_for_nation_1.do.txt – reads pop_2020.csv and produces a stata data set, reshaped, that has single age population for the country.

  read_mort_data_nation_4.do.txt  – stata do file produces results for Table 1.  

  read_mort_data_fig_1_standard_1.do.txt – stata data file that produces the results for Figure 1

  read_mort_data_by_group_2.do.txt – stata data file that produces the results for Table 2




\RDD	-- program to generates Figure 2 in the paper
	
  deaths_by_single_age_2_22_2021.csv – CSV data that has deaths by single year ages for males and females – these are summed together to get total deaths by age in the RDD program

  pop_2020.csv – csv data that has population by single year of age for January 2020.  We use the 1st column, total population

  rdd_at_65.do.txt – stata do file that produces the RDD estimates.




\Appendix_results – subfolders that that produces the results in the appendix

\Figure S1 – compare 2019 w COVID age distribution
	Deaths_by_single_age_2019.xlsx – excel file w/ data from CDC wonder multiple cause of death data that has deaths by single age in 2019 and COVID deaths by single age.

\Figure S2 – unemployment rates.  This subfolder uses data from regular monthly CPS from IPUMS.org 
	
  cps_00104.dat – deliminted data from IPUMS that has individual level data

  cps_00104.do – stata do file that reads in data from IPUMS and saves it as the stata file cps_basic.dta

  unemployment_rates_by_month_sex_race_1.do – stata file that reads cps_basic.dta and generates monthly unemployment rates for the six groups in our analysis by month – outputs them for use in excel.

\Place-of_death
	Deaths_by_pace_65+_2019.xlsx -- excel file that has place of death for people aged 65 and older in 2019.  We obtained this from CDC Wonder multiple cause of death data.

\Table S1 – this tables examines the sensitivity of the results in Table 1 in the paper to sing different sets of years.  You will need the basic data from \main_results to run these programs. There are five programs: 
  
  read_mort_data_nation_zz_19.do.txt where zz=15 through 19 and represents using years 2015 through 2019, 2016-2019, etc., to calculate excess deaths.

\Table S2 – this table examines the sensitivity of the estimates in Table 2 to how we calculate life years lost for a particular 5-year age band.  You will need the basic data from \main_results to run these programs

  read_more_data_by_group_median_age_1.do.txt – stata do file.  Here, we use the life years left for the median age in an age band.  As an example, for ages 20-24, we would use age 22.  

  read_more_data_by_group_age_average_1.do.txt – stata do file.  Here, we use the simple average life years lost for all ages in the age band.


