#testing the plot function 
cars <- c(1,4,5,6,10) 
plot(cars, type = "o") # plots the vector with indexing from 1 to size of the vector
# type = "o" to draw lines in the plot between the data of the vector
title(main = "cars vs index")


# Using the ggplot library for visualizations 
library(ggplot2) # adding the ggplot library
data = mtcars # setting the cars data into the variable data
ggplot(mtcars, aes(x = mpg, y = wt)) + geom_point()+ggtitle("Milles per gallon vs weight")+ labs(y = "weight", x = "Miles per gallon")

mtcars$vs <- as.factor(mtcars$vs)
#create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()
