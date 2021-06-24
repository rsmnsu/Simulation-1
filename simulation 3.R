#install.packages("MASS")
library("MASS")
#install.packages("writexl")
library(writexl)
#set.seed(98989)# seeding will force geneerate the same variables despite difference covariances
mu<-c(0,0,0)
K<-c(0.5,0.55,0.6) #Middle variance- for mid variance use between 0,5-0,6
Sigma<- K%*%t(K)
sigma<-matrix(c(0.250,0.2750,0, 0.275, 0, 0.33, 0, 0.3300, 0.36), 3,3) #Low variance
#data1<-var(mvrnorm(n=100000, mu, Sigma, empirical = TRUE))
data3<-mvrnorm(n=100000, mu, Sigma, empirical = TRUE)
write.csv(data3, "C:/Users/islamr/OneDrive - University of Tasmania/Lopez Paper/datamediumvariance.csv", row.names=F)
head(data3)
tail(data3)
install.packages("risk")
install.packages("cvar")
library(cvar)
install.packages("quantreg")
library(quantreg)
srisk3<-srisk(data3, mu=0, lambda = 1e+08, alpha = 0.05, eps = 1e-04)
srisk3
