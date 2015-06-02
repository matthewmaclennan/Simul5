#R script for handling the *.csv outputs from Simul5 Complex.
#import sim files from a run
 files<-list.files("C:\\Users\\ChenLab\\Documents\\Simul 5 Complex - Release 2011\\Export Profiles\\start4\\",
 pattern="sim.*.csv",full.name=T)
 filenames<-list.files("C:\\Users\\ChenLab\\Documents\\Simul 5 Complex - Release 2011\\Export Profiles\\start4\\",
 pattern="sim.*.csv",full.name=F)
#Replace spaces in the filenames with underscores so that assign() will work. The spaces are considered illegal name characters
 filenames<-gsub(" ","_",filenames)
  for(i in 1:length(files)){
    assign(filename[i],as.matrix(read.csv(files[i])))
  }
  
#Loading all csv files in a directory. Pattern argument is regex, recursive=T searches through all folders in Export Profiles
list.files("C:\\Users\\ChenLab\\Documents\\Simul 5 Complex - Release 2011\\Export Profiles\\",
full.name=T,recursive=T,pattern="sim.*.csv")
