#install.packages("MASS")
library("MASS")
#install.packages("writexl")
library(writexl)
#set.seed(98989)# seeding will force geneerate the same variables despite difference covariances
mu<-c(0,0,0)
K<-c(0.1,0.25,0.3) #Low variance- for mid variance use between 0,5-0,6
Sigma<- K%*%t(K)
sigma<-matrix(c(0.10,0.150,0, 0.25, 0, 0.3, 0, 0.3, 0.032), 3,3) #Low variance
#data1<-var(mvrnorm(n=100000, mu, Sigma, empirical = TRUE))
data2<-mvrnorm(n=100000, mu, Sigma, empirical = TRUE)
write.csv(data2, "C:/Users/islamr/OneDrive - University of Tasmania/Lopez Paper/datalowvariance.csv", row.names=F)
head(data2)
tail(data2)
install.packages("risk")
install.packages("cvar")
library(cvar)
install.packages("quantreg")
library(quantreg)
srisk2<-srisk(data2, mu=0, lambda = 1e+08, alpha = 0.05, eps = 1e-04)
srisk2