install.packages("dplyr")
library(dplyr)
setwd("D:/Machine Learning/RapidMiner/ProductsAndTransactions")

ImportDataSet<- function()
{
  read.csv(file.choose(), sep = ",")
  
}

products<- ImportDataSet()
attach(products)

transactions<-ImportDataSet()
attach(transactions)

 
######## Add Colom and Filter Data ########

AddnewcolomFilter<- function(x,Var1,Var2)
{
  
  vi<-mutate(x, newVar = var1+ Var2)
  return (vi)
  
  #newcolm<-mutate(x, newVar = Var1+Var2)
  #return(subset(newcolm, filterVar=="filterAttribute"))
}






####for single dataset######

newColom<- mutate(products, newID= Product.ID + Price)
View(newColom)

###for Multiple DataSets####
#first Merge them by any common attribute

TotalData<- merge(products, transactions, by= "Product.ID")
View(TotalData)
#now add new colom
new.colom <- mutate(TotalData, NewPrice= Amount + Price)
View(new.colom)
