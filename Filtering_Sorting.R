install.packages("dplyr")
library(dplyr)
setwd("D:/Machine Learning/RapidMiner/Titanic")

ImportDataSet<- function()
{
  read.csv(file.choose(), sep = ",")
  
}

######Read CSV Function which will allow user to browse the specific file#######


dataForFilter<- ImportDataSet()
attach(dataForFilter)

######Filters#######

AddFilter<- function(x, variable, operator, objct){
  
  if(operator=="EQUAL"){
   return( subset(x, variable == objct ))
  }
  else if (operator== "NOTEQUAL"){
    
    return( subset(x, variable != objct ))
  }
  else if(operator== "ISIN"){
    
    return( subset(x, variable %in% objct ))
      
  }
  else if(operator== "ISNOTIN")
  {
    return( subset(x, variable != objct ))
    
  }
  else if(operator=="STARTWITH"){
    return( subset(x, variable == objct ))
  }
  else if (operator== "ENDWITH"){
    
    return( subset(x, variable == objct ))
  }
  else if (operator== "MATCHES"){
    
    return( subset(x, variable == objct ))
  }
  else if (operator== "NOTMATCHES"){
    
    return( subset(x, variable != objct ))
  }
  
  
}

malefilter<- AddFilter(dataForFilter, Sex, operator = "EQUAL", objct= "Male")
View(malefilter)

#############Sorting Function#########

SortData<- function(x, Variable, type)
{
  
  if(type=="ASC")
  {
    return (arrange(x, Variable))
  }
  else(type=="DESC")
  {
    return (arrange(x, desc(Variable)))
    
  }
  
}


######Filter and Sorting function ########

FilterAndSort<-function(x, variable, operator, objct, sortVariabl, type)
{
  if(type=="ASC")
  {
    return (arrange(x, sortVariabl))
  }
  else if(type=="DESC")
  {
    return (arrange(x, desc(sortVariabl)))
    
  }
  
  else if(operator=="EQUAL"){
    return( subset(x, variable == objct ))
  }
  else if (operator== "NOTEQUAL"){
    
    return( subset(x, variable != objct ))
  }
  else if(operator== "ISIN"){
    
    return( subset(x, variable %in% objct ))
    
  }
  else if(operator== "ISNOTIN")
  {
    return( subset(x, variable != objct ))
    
  }
  else if(operator=="STARTWITH"){
    return( subset(x, variable == objct ))
  }
  else if (operator== "ENDWITH"){
    
    return( subset(x, variable == objct ))
  }
  else if (operator== "MATCHES"){
    
    return( subset(x, variable == objct ))
  }
  else if (operator== "NOTMATCHES"){
    
    return( subset(x, variable != objct ))
  }
  
}


