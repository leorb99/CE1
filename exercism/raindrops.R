raindrops <- function(number) {
  result <- vector()
  rain <- FALSE
  if(!(number %% 3)) {
    result <- c(result, "Pling")
    rain <- TRUE
  }
  if(!(number %% 5)) {
    result <- c(result, "Plang")
    rain <- TRUE
  }
  if(!(number %% 7)) {
    result <- c(result, "Plong")
    rain <- TRUE
  }
  if(rain) {
    return(paste0(result, collapse=""))
  }
  return(toString(number))
}

raindrops(21)
raindrops(1)
raindrops(105)
raindrops(37)