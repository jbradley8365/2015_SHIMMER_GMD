
# Driver code

# COPY THIS INTO R-CONSOLE WINDOW TO EXECUTE

library("deSolve", lib="C:/RFolder/New_Packages")


#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

#Enter the paths to the source file library, driving data file, observed data, and an output folder ....

path    <-"C:/RFolder/SHIMMER_SOURCE/SHIMMER/library/"

pathdr  <-"C:/RFolder/SHIMMER_SOURCE/input_data/"

pathte  <-"C:/RFolder/SHIMMER_SOURCE/testing_data/"


#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


# Load observational data

source(paste(path,"SHIMMER_load_observational_data.R",sep=""))


#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


#Number of years to run

nyears<-75



ndays<-nyears*365+1                # Number of days in the run sequence
times<-seq(0,nyears*365,by=1)      # Times at which we want the model to output data

#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


source(paste(path,"SHIMMER_set_parameter_values.R",sep=""))

source(paste(path,"SHIMMER_load_and_make_drivers.R",sep=""))

source(paste(path,"SHIMMER_set_start_values.R",sep=""))

source(paste(path,"SHIMMER_model_definition.R",sep=""))


#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

#Solve the equations over the interval given by (times)

out<-as.data.frame(lsoda(start,times,model,parms))


#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''



#Post processing to get rates of change

out$years<-out$time/365

source(paste(path,"SHIMMER_compute_totals.R",sep=""))

source(paste(path,"SHIMMER_construct_array.R",sep=""))


#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


source(paste(path,"SHIMMER_basic_plots.R",sep=""))




