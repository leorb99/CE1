leap <- function(year) {
  if (!(year %% 4) && ((year %% 100) || !(year %% 400))) {
    return(TRUE)
  }
  return(FALSE)
}
leap(2015)
leap(2016)
leap(2000)