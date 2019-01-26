getwd()  #getting working directory. to check, run and see where u r in the console

setwd('~/Documents')  #setting working directory

statesinfo <- read.csv('stateData_DANDT2_unit12.csv') #retrieving data using the read.csv func

subset(statesinfo, state.region == 1) 
#subset command- passing the database to the subset function and asking it to retrieve any data 
#that has region equal to 1

#ALTERNATE WAY TO SUBSET DATASET
#format - datasetname[Rows,Columns]

statesinfo[statesinfo$state.region == 1, ]
#to get all columns leave column parameter blank
# $ is used between DB name and column name to be able to access actual variable

statesinfo[statesinfo$population > 5000, ]
