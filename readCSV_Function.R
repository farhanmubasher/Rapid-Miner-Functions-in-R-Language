####Function that will take your file and will attach it automatically so that you can access attributes 
#of this dataset easily


readDataSet<- function()
{
  read.csv(file.choose(), sep = ",")
}


ImportDataSet<- function(){
  
  varr<-readDataSet()
  attach(varr)
  return(varr)
}

## calling Function##

dataForLR<- ImportDataSet()
