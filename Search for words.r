### Friday 21 Oct, 2012
## Sydney, UTS
## Joey Zunyi Xie
## Type some words, then looking for them in the Excel,return the indices of the words if they are found
## Data source: Excel for Paper Rank
## Time period: 

Findstr <- function(Filename) {
  
  print('Plese input the Journal name')
  
  s <- scan(what="")
  
  
  file <- read.table(Filename,header=T,fill=T,sep=",")
  
  i <- grep(s,file$Title,ignore.case=T)
      
  re <- paste(file$Title[i],":",file$Rank[i])
  
  re
  
      
}
