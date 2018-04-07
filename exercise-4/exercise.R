# Exercise 4: functions and conditionals
Joy Liu 4/5/2018
# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string

install.packages ("stringr")
library("stringr")

is_twice_as_short <- function(x,y) {
  if (nchar(x)<= 2*nchar(y)) {
   status <- TRUE
  } else {
    status <- FALSE
  }
  return(status)
}
print(is_twice_as_short('qqqqqqqqqqqq','qqqq'))

is_twice_as_long <- function(a, b){
  a_length <- nchar(a)
  b_length <- nchar(b)
  diff <- abs(a_length - b_length)
  min_length <- min(a_length, b_length)
  return(diff >=  min_length)
}
# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!

is_twice_as_long("Joy", "Liu")
is_twice_as_long("four","hi")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"

describe_difference <- function(x,y) {
  N <- abs(nchar(x)-nchar(y))
  if (nchar(x)>nchar(y)){
    print(paste("Your first string is longer by ",N, " characters"))
  } else if (nchar(y)>nchar(x)) {
    print(paste("Your second string is longer by ",N, " characters"))
  } else {
    print("Your strings are the same length!")
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("apple", "pie")
describe_difference("joy","liu")
describe_difference("informatics","psychology")
