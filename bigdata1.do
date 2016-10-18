cd "\\appsstorage.bc.edu\appsdata\ClassData\ADEC743001"


*import and save WORK_WCAS_DATA_CLASS.csv

import delimited \\appsstorage.bc.edu\appsdata\ClassData\ADEC743001\WORK_WCAS_DATA_CLASS.csv,clear
des
sum
save "\\Client\H$\Desktop\WORK_WCAS_DATA_CLASS.dta"

*import BC_SUBSCRIBER_SUMMARY.csv

import delimited \\appsstorage.bc.edu\appsdata\ClassData\ADEC743001\BC_SUBSCRIBER_SUMMARY.csv,clear
des
sum


*import BC_SUBSCRIBER_BEHAVIOR.csv
import delimited \\appsstorage.bc.edu\appsdata\ClassData\ADEC743001\BC_SUBSCRIBER_BEHAVIOR.csv, clear 
des
sum


log close
