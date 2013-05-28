## 21 February, 2012
## Sydney,Glenfield
## Joey Zunyi Xie
## Calculate the maximal,minimal and mean value
## Data source: GRACE-Gwater-SM-fper-frec-Rainfall
## Time period: 2004-2012
## Study areas: Broome,Limestone,Sydeney,Queensland-four GDEs areas


library(xlsx)
library(ProjectTemplate)

Cal_Max <- function(){

  setwd("E:/Doctor/Test of R/ProjectTemplate/GDEs")
  
  load.project()
  
  ResultName <- "E:/Doctor/Test of R/ProjectTemplate/GDEs/reports/Statistics.xlsx"
  #Put the data that has alreay been read py ProjectTempate into a Array
  a <- array(c("Broome","Perth","Sydney","Queensland"),dim=c(1,4))
  
  #In order to append new sheet in a Excel, I need to make a new empty Excel file first
  write.xlsx("Stastics of GDEs",ResultName,row.names = F,col.names=F,sheetName="stat")  
  
  #Start working
  for(i in 1:length(a)){
    
    df <- get(a[i])
    
    Stat <- c("Max","Min","Net","Mean")
    GRACE <- c(max(df$GRACE,na.rm=T),min(df$GRACE,na.rm=T),max(df$GRACE,na.rm=T)-min(df$GRACE,na.rm=T),mean(df$GRACE,na.rm=T))
    Gwater <- c(max(df$Gwater,na.rm=T),min(df$Gwater,na.rm=T),max(df$Gwater,na.rm=T)-min(df$Gwater,na.rm=T),mean(df$Gwater,na.rm=T))
    SM <- c(max(df$SM,na.rm=T),min(df$SM,na.rm=T),max(df$SM,na.rm=T)-min(df$SM,na.rm=T),mean(df$SM,na.rm=T))
    fper <- c(max(df$fper,na.rm=T),min(df$fper,na.rm=T),max(df$fper,na.rm=T)-min(df$fper,na.rm=T),mean(df$fper,na.rm=T))
    frec <- c(max(df$frec,na.rm=T),min(df$frec,na.rm=T),max(df$frec,na.rm=T)-min(df$frec,na.rm=T),mean(df$frec,na.rm=T))
    Rainfall <- c(max(df$Rainfall,na.rm=T),min(df$Rainfall,na.rm=T),max(df$Rainfall,na.rm=T)-min(df$Rainfall,na.rm=T),mean(df$Rainfall,na.rm=T))
    
    Result.df <- data.frame(StatName=Stat,Grace=GRACE,Gwater=Gwater,SM=SM,fper=fper,frec=frec,Rainfall=Rainfall)
    
    #NB:Do remember if you can only set up parameter "append=T" when you have the exist excel already,or you will see the error"cant find this excel"
    write.xlsx(Result.df,ResultName,row.names = FALSE,sheetName=a[i],append=TRUE)  
  }
  
}


Cal_Max()


