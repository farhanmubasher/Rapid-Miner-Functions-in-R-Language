install.packages("dplyr")
library(dplyr)
setwd("D:/Machine Learning/RapidMiner/ProductsAndTransactions")



##############Modified the ImportDataSet (),  now it will automatically attach data #####
 
readDataSet<- function()
{
  read.csv(file.choose(), sep = ",")
}

ImportDataSet<- function(){
  
  varr<-readDataSet()
  attach(varr)
  return(varr)
}


products<- ImportDataSet()

transactions<-ImportDataSet()


##########Join Function#######

join<- function(data1, data2, type){
  if(type=="inner")
  {
    inner_join(data1, data2) 
  }
  else if (type== "left")
  {
    left_join(data1, data2)
  }
  else if(type== "right")
  {
    right_join(data1, data2)
  }
  
}

####Function Calling####

MyInnerJoin <- join(products, transactions, type= "inner")
View(MyInnerJoin)



#####Separate joining Functions#####
#####Inner Join########

inner<-inner_join(products, transactions)
view(inner)

########Left Join########
left<-left_join(products, transactions)
view(left)

########Right Join######
right<-right_join(products, transactions)
View(right)



