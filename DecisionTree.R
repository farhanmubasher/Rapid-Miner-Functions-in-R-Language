#Titanic Training DataSet from RapidMiner
#Functions in R

install.packages("party")
library(party)
setwd("D:/Machine Learning/RapidMiner/TitanicTraining")


ImportDataSet<- function()
{
  read.csv(file.choose(), sep = ",")
  
}

dataForTree<-ImportDataSet()
attach(dataForTree)
##########Decision Tree########

#other way is to use rpart()
#but by now im going to use ctree()

############## So our Decision Tree Function#########


Decision.TREE<-function(formula, x){
  
  # Create the tree.
  output.tree <- ctree(formula, data = x)
  
  # Plot the tree.
  plot(output.tree)
}

#calling the Function.. 
#here (Survived ~ .) is a model ormula which means label 'survived' with all other attributes in datasets

Decision.TREE(Survived~., dataForTree)
