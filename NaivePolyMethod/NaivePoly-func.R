#' Naive Polynomial Method For Smoothing
#' @param 
#' @param 
#' @export
NaivePoly <- function(data) {
  # data is a length N x N vector
  N <- sqrt(length(data))
  # convert into data-structure
  XX <- YY <- seq(from = 0, by = 1/N, len = N)

  # Fitting Z to X and Y
  ans <- lm(data ~ XX)
  
}