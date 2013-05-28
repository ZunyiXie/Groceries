## Friday 24 May, 2013
## Sydney, Glenfield
## Joey Zunyi Xie
## Copy files using R,and give names to them by copying the names of MODIS11A2 
## Data source: MOD09A1
## Time period: 2005

Copy_files <- function(){
  
  ##Copy all the files into different folders according to the date
  Newfiles.hdf <- list.files(path="/Volumes/Zunyixie/Doctor/New GDEs/Dampier Peninsula/MODIS NDWI",pattern="*.hdf",full.names=T)
  Modfiles.hdf <- list.files(path="/Volumes/Zunyixie/Doctor/New GDEs/Dampier Peninsula/MODIS LST/hdf",pattern="*.hdf")
  
  for(i in 1:length(Newfiles.hdf)) {
    
    Newname <- paste("/Volumes/Zunyixie/Doctor/New GDEs/Dampier Peninsula/MODIS NDWI/hdf/MOD09A1.",substr(Modfiles.hdf[i],10,17),".h29v10.005.hdf",sep="")
    
    file.copy(Newfiles.hdf[i],Newname)
  }
  
#   for(i in 2004:2012) {
#     ##Select the files including i and with .nc at the end
#     files <- list.files(path="/Volumes/Zunyixie/Doctor/Soil Moisture",pattern=paste(as.character(i),".+","[.]nc$",sep=""),full.names=T)
#     ##Copy all the Select files into the corresponding i folders,PS:files are the full name of the data with the paths
#     file.copy(files,paste("/Volumes/Zunyixie/Doctor/Soil Moisture/","SM",as.character(i),sep="")) 
#     
#   }
  
}

Copy_files()
