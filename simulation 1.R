#install.packages("MASS")
library("MASS")
#install.packages("writexl")
library(writexl)
#set.seed(98989)
mu<-c(0,0,0)
K<-c(0.9,0.95,0.86) #High variance- for low variance use below 0.3, for mid variance use between 0,5-0,6
Sigma<- K%*%t(K)
sigma<-matrix(c(0.91,0.95,0, 0.87, 0, 0.82, 0, 0.81, 0.98), 3,3) #High variance
#data1<-var(mvrnorm(n=100000, mu, Sigma, empirical = TRUE))
data1<-mvrnorm(n=100000, mu, Sigma, empirical = TRUE)
write.csv(data1, "C:/Users/islamr/OneDrive - University of Tasmania/Lopez Paper/datahighvariance.csv", row.names=F)
head(data1)
tail(data1)

