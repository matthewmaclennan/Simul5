#R script for handling the *.csv outputs from Simul5 Complex.
#import sim files from a run
 files<-list.files("C:\\Users\\ChenLab\\Documents\\Simul 5 Complex - Release 2011\\Export Profiles\\start4\\",
 pattern="sim.*.csv",full.name=T)
 filenames<-list.files("C:\\Users\\ChenLab\\Documents\\Simul 5 Complex - Release 2011\\Export Profiles\\start4\\",
 pattern="sim.*.csv",full.name=F)
#Replace spaces in the filenames with underscores so that assign() will work. The spaces are considered illegal name characters
 filenames<-gsub(" ","_",filenames)
  for(i in 1:length(files)){
    assign(filename[i],read.csv(files[i]))
  }
  
