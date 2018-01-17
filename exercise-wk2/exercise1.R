## Part 1: Debugging

my.num <- 6
initials <- "V. W."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# The contents of my.vector are NOT numeric and thus cannot be summed together. Adding two strings/characters cannot be done through sum().

install.packages("stringr")
library(stringr)

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# str_length() is not function under the library stringr, but stringr was only installed and not yet enabled, which can be done by calling library(stringr).

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# The variable 'initial' does not exist. It could be a typo which meant to refer to the existing variable 'initials'. 


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector.part2 <- c(1:10)
typeof(vector.part2)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2) {
  difference <- abs(length(vector1) - length(vector2))
  return(paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1:5), c('Vincent', 'Widjaya'))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector1, vector2) {
  difference <- length(vector1) - length(vector2)
  longer <- "first"
  if(difference < 0) {
    longer <- "second"
  }
  return(paste("Your", longer, "vector is longer by", abs(difference), "elements"))
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c('Vincent', 'Widjaya'), c(1:5))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vector1, vector2, vector3) {
  return(c(vector1, vector2, vector3))
}

# Send 3 vectors to your function to test it.
CombineVectors(c(1:3), c(4:6), c(7:9))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses.vector) {
  return(courses.vector[toupper(courses.vector) == courses.vector])
}
