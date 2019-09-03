# Squaring elements of a given vector

square_for <- function(x){
  # [ToDo] Use the for loop
  for (i in seq(along=x)){x[i] = x[i]^2}
  return(x)
}

square_sapply <- function(x){
  # [ToDo] Use the sapply function
  x <- sapply(x,function(z) z^2)
  return(x)
}

square_vec <- function(x){
  # [ToDo] Use power(^) function in vector form
  return(x^2)
}

square_vec2 <- function(x){
  # [ToDo] Use multiplication(*) function in vector form
  return(x*x)
}

# [ToDo] Create a vector x of size 100,000 of normal variables

x <- rnorm(100000)

# [ToDo] Verify that all functions return the same output
identical(square_for(x), square_sapply(x))
identical(square_vec(x), square_vec2(x))
identical(square_for(x), square_vec2(x))

# [ToDo] Use microbenchmark package to compare three functions in terms of speed
library(microbenchmark)
microbenchmark(square_for(x), square_sapply(x), square_vec(x), square_vec2(x),x**2)
