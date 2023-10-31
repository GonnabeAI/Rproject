#Ch1-3-(1)
library(readxl)
library(dplyr)
setwd("C:\\Users\\Dowoon Kim\\Desktop\\KNOU\\2023-2\\R_analysis\\Ch1")
dat<-read_excel("patients_2sheets.xlsx")
dat2<-dat %>% rename(CA19.9='CA19-9') # dplyr
dat3<-dat2 %>% mutate(CA19.9=as.double(CA19.9)) #dplyr
dat4<-dat3 %>% mutate(CA19.9=log(CA19.9)) #dplyr

#Ch1-3-(2)
dat5<-dat4 %>% mutate(Stage.rank=ifelse(Stage>=4,"High","Low"))

#CH1-3-(3)
male.CA19.9 <- dat3 %>% filter(sex==1)
summary(male.CA19.9)
female.CA19.9<-dat3 %>% filter(sex==0)
summary(female.CA19.9)

#Ch1-3(4)
Stage.No5 <-dat3 %>% filter(Stage==5)
Stage.No4 <-dat3 %>% filter(Stage==4)
Stage.No3 <-dat3 %>% filter(Stage==3)
Stage.No2 <-dat3 %>% filter(Stage==2)
Stage.No1 <-dat3 %>% filter(Stage==1)