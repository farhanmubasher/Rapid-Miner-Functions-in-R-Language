
install.packages("neuralnet")
library(neuralnet)

readDataSet<- function()
{
  read.csv(file.choose(), sep = ",")
}

ImportDataSet<- function(){
  
  varr<-readDataSet()
  attach(varr)
  return(varr)
}


dataForLR<- ImportDataSet()





####Basic Neural Network function###

Neural.Net<- function (formula, dataset, neurons){
  
  neuralnet(formula, data = dataset, hidden= neurons)
  
}

####Calling Function#####
NN.1 <- Neural.Net(label~a1+a2+a3+a4+a5, dataForLR, neurons = 3)

summary(NN.1)

