library(forecast)
electricity <- read.csv("C:/Users/User/Desktop/520 project/elec.csv",header=TRUE)
Temperature <- read.csv("C:/Users/User/Desktop/520 project/Temp.csv",header=TRUE)
x1<- ts(electricity,frequency = 12)
plot.ts(x1)

model_fit<-auto.arima(x1, seasonal =TRUE, ic = 'aic')
print(model_fit)
forecast(model_fit,6)
