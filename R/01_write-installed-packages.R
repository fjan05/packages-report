## deja vu from yesterday!

## create a data frame of your installed packages

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

library(tidyverse)
ipt <- installed.packages() %>%
  as_tibble() %>% select(Package,LibPath,Version,Priority,Built)

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

library(here)
write_csv(ipt,path=here("data","installed-packages.csv"))

## when this script works, stage & commit it and the csv file
## PUSH!

View(ipt)

test=read_csv(here("data","installed-packages.csv"))

#here("data","installed-packages.csv")
#here("data","whatever_other-folder","installed-packages.csv")

library(Hmisc)
describe(test)

?here
