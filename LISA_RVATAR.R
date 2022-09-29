set.seed(100) #To generate random numbers
rnorm(75)      #The number of generated data

#-----ONE SAMPLE T.TEST

#mean:40000g
#75 garri shipments,
garriweight<-c(rnorm(75,mean = 36500,sd =4000 ))
garriweight
t.test(garriweight, mu = 4000)
garriweight<-c(rnorm(750,mean = 39500,sd =40000 ))
garriweight
t.test(garriweight, mu = 40000)

#------two sample t.test

#Hospital
# 1000 patients.Suffering from hypertension
# mean= 145mmHg
# Capoten
# mean=138, sd = 8
# Ho: mu = 0
# H1: mu !=0

set.seed(2820)
pretreatment<-c(rnorm(1000,mean = 145,sd =8 ))
posttreatment<-c(rnorm(1000,mean = 138,sd =8 ))
t.test(pretreatment,posttreatment,paired=T)
