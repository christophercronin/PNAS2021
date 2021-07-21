set more off
clear

use cps_basic

* define races
gen black=race==200 | race==801 | race==805 | race==806 | race==810 | race==814 | race==816 | race==818
gen white=race==100
gen hispanic=hispan>0
replace white=0 if hispanic==1
replace black=0 if hispanic==1
keep if white==1 | black==1 | hispanic==1
gen race3=white+2*black+3*hispanic

* keep in labor force
keep if labforce==2

* define unemployed
gen unemployed=empstat==21 | empstat==22

gen year_month=year*100+month

* get means by sex race by month
collapse (mean) unemployed [aw=wtfinl], by(sex race3 year_month)
outsheet using unemp_rates_sex_race_month.csv, comma replace
list

