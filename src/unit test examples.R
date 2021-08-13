# Testing testthat

# Requires packages:
# install.packages("testthat")
# install.packages("devtools")
# install.packages("remotes")

# create a function that takes any numeric data frame, finds the mean of all columns, then finds the max column mean, and the minimuym column mean from the data frame, $ returns those mix and mean values in a vector (min_mean_value, max_mean_val)
library(testthat)

df <- (mtcars)

#' My mean calculator per column and also returns the min and max of each column
#'
#' @param df data frame
#'
#' @return 
#' @export
#'
#' @examples
mean_func <- function(df){
  mean_col <- apply(df, 2, mean, na.rm = TRUE)
  col_mean_max <- max(mean_col)
  col_mean_min <- min(mean_col)
  return(c(col_mean_min, col_mean_max))
}

mean_func(mtcars)

expect_length(mean_func(df = mtcars), 2)

expect_true(mean_func(mtcars)[1] < mean_func(mtcars)[2])

typeof(mean_func(mtcars))

expect_type(mean_func(mtcars), "double")






