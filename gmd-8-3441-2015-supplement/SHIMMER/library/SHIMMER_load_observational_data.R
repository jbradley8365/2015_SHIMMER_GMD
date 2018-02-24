# Load observational testing data

CS_obs<-read.table(paste(pathte,"CS.dat",sep=""),header=FALSE)
C_mic_obs<-read.table(paste(pathte,"Cmic.dat",sep=""),header=FALSE)


days_CS<-CS_obs[,1]
mean_CS<-CS_obs[,2]
years_CS<-days_CS/365



days_C_mic<-C_mic_obs[,1]
mean_C_mic<-C_mic_obs[,2]
years_C_mic<-days_C_mic/365






#####################################
#####################################

