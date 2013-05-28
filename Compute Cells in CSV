### Friday 21 Dec, 2012
## Sydney, Glenfield
## Joey Zunyi Xie
## Compute the cells in the CSV file
## Data source: TRMM 3B43 netCDF 25km
## Time period: 2004-2012

Compute_CSV <- function() {
  
  # Set Work Directory
  setwd("/Users/joeyxie/Documents/Doctor/TRMM3B43.7NetCDF/Results") 
  
  #Read CSV files
  tmp <- read.csv("TRMM.csv",header=T)
  
  #Create a Date sequence, with the intervial equals to 1 month
  seq <- seq(as.Date("2000/1/1"), as.Date("2000/12/1"), by = "months")
  
  #Format the Date into the style like "Jan","Feb","Mar","Apr"
  f <- format(seq,format="%b")
  
  #Create a Array containing the names of 12 months
  a <- array(f,dim=c(12,1))
  
  for(j in 1:12) {
  #Find the data position of every month
    i <- grep(a[j],tmp$Date) 
  #Calculate the month with 31 days
    if(a[j]=="Jan"|a[j]=="Mar"|a[j]=="May"|a[j]=="Jul"|a[j]=="Aug"|a[j]=="Oct"|a[j]=="Dec")
      {tmp$Broome[i] <- tmp$Broome[i]*31*24
       tmp$Limestone[i] <- tmp$Limestone[i]*31*24
       tmp$Sydney[i] <- tmp$Sydney[i]*31*24
       tmp$Queensland[i] <- tmp$Queensland[i]*31*24
      }
  #For leap year 2004,2008,and 2012,I modified it manually
    else if(a[j]=="Feb") 
      {tmp$Broome[i] <- tmp$Broome[i]*28*24
       tmp$Limestone[i] <- tmp$Limestone[i]*28*24
       tmp$Sydney[i] <- tmp$Sydney[i]*28*24
       tmp$Queensland[i] <- tmp$Queensland[i]*28*24
      }
  #Calculate the month with 30 days
    else 
     {tmp$Broome[i] <- tmp$Broome[i]*30*24
      tmp$Limestone[i] <- tmp$Limestone[i]*30*24
      tmp$Sydney[i] <- tmp$Sydney[i]*30*24
      tmp$Queensland[i] <- tmp$Queensland[i]*30*24
     }
                 
                 }
  #Output the calculated matrix into Excel,sep="\t" is important
  write.table(tmp,file="/Users/joeyxie/Documents/Doctor/TRMM3B43.7NetCDF/Results/TRMMNEW_Compute.xls",row.names=F,sep="\t")
  
}

Compute_CSV()


#End work
