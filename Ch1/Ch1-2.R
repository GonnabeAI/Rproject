#Ch1-2
#2-(1)
install.packages("datarium")
library(datarium)
dat.head<-headache
colnames(dat.head)
#2-(2)
colnames(dat.head)[3]<-"risk_category"
dat.head2<-dat.head %>% rename(risk_category=risk)
#2-(3)
dat.head3<-dat.head2
dat.head3$pain<-ifelse(dat.head3$pain_score>=80,1,0)
#or
dat.head3.1 <-dat.head2 %>% mutate(pain=ifelse(pain_score>=80,1,0)) #dplyr
#2-(4)  
dat.head4<-dat.head3[dat.head3$gender=="female"&dat.head3$pain==1,]
nrow(dat.head4)
#or
dat.head4.1<-dat.head3.1 %>% filter(gender=="female" & pain==1)
nrow(dat.head4.1)
#2-(5)
dat.head5<-dat.head3[dat.head3$gender=="male" & dat.head3$risk_category=="high",]
mean(dat.head5$pain_score)
#or
dat.head5.1<-dat.head3.1 %>% filter(gender=="male" & risk_category == "high")
mean(dat.head5.1$pain_score)
#2-(6)
