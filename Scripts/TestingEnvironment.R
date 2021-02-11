myfunction <- function() {
  x <- rnorm(100)
  mean(x)
}

ls()

myfunction()


second <- function(x) {
  x + rnorm(length(x))
}

second(4:10)


x <- 1:20

x



# For large datasets if the file weights more than the avaiable RAM, stop it

# For faster loading you can get the classes loading a sample, for example
initial <- read.table("dataset.txt", nrows = 100)
classes <- sapply(initial, class)
tabAll <- read.table("dataset.txt", colClasses = classes)
# This will stablish the class without the function having to search every column

x <- c(4, "a", TRUE)
class(x)

x <- c(1,3,5)
y<- c(3,2,10)

z <- cbind(x,y)
class(z)


x <- list(2, "a", "b", TRUE)
z <- x[[1]]
z
class(z)


x <- 1:4
y <- 2:3
x+y


library(tidyverse)


hw <- read_csv("../DataScienceJHU/Data/hw1_data.csv")
tail(hw, 2)


hw$Ozone[47]


sum(is.na(hw$Ozone))

mean(hw$Ozone)

hw2 <- hw %>% filter(Ozone != "NA")

mean(hw2$Ozone)

hw3 <- hw2 %>% filter(Ozone > 31 & Temp > 90)
mean(hw3$Solar.R)


hw4 <- hw %>% filter(Month == 5)

max(hw4$Ozone)


install.packages("swirl")
library(swirl)
install_from_swirl("R Programming")
swirl()


# While loop
count <- 0
while(count < 10) {
  print(count)
  count <- count + 1
}

#
z <- 5

while(z >= 3 && z <= 10){
  print(z)
  coin <- rbinom(1, 1, 0.5)
  
  if(coin == 1) { 
    z <- z + 1
  } else {
    z <- z - 1
  }
}




add2 <- function(x, y){
  x + y
}

add2(3,5)



above10 <- function(x){
  use <- x > 10
  x[use]
}


above <- function(x, n){
  use <- x > n
  x[use]
}

x <- 1:20

above(x, 5)
above10(x)


above2 <- function(x, n = 10){
  use <- x > n
  x[use]
}

above2(x)

above2(x,15)


columnmean <- function(x, removeNA = TRUE){
  nc <- ncol(x)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(x[,i], na.rm = removeNA)
  }
  means
}

columnmean(airquality)




