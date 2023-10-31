#Ch1 1-(1)
ID=c(1:8)
Carat=c(0.7,0.7,0.43,0.7,0.59,0.52,1.18,9)
Cut=as.factor(c("Premium", "Very Good", "Ideal", "Good", "Ideal", "Very Good", "Premium", "Good"))
Price=c(2348, 2332, 760, 2498, 2294, 1423, NA, 3660)
data<-data.frame(ID, Carat, Cut,Price)

#Ch1 1-(2)
data1<-data
data1$Carat[8]<-0.9
#or 
data1$Carat[data1$Carat==9]<-0.9
#or
data1.1$Carat<-replace(data1.1$Carat,data1.1$Carat==9,0.9)
#or
data.dplyr1<-data.dplyr %>% mutate(Carat=replace(Carat, Carat==9, 0.9))

#Ch1 1-(3)
data1$Cut<-as.factor(data1$Cut)
#or
data.dplyr2<-data.dplyr1 %>% mutate(Cut=as.factor(Cut))

#Cha1 1-(4)
data2<-data1[data1$Carat>=0.6,]
#or
data.dplyr3 <-data.dplyr2 %>% filter(Carat>=0.6)
summary(data2) 
#or
summary(data.dplyr3)

#Chat1 1-(5)
write.csv(data2,"Ch1-1.csv")