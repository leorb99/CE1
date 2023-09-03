score <- function(x, y) {
  INNER_CIRCLE <- 1
  MIDDLE_CIRCLE <- 5
  OUTTER_CIRCLE <- 10
  target <- sqrt((x^2 + y^2))
  if (target >= 0 && target <= INNER_CIRCLE) {
    return(10)
  }
  else if (target > INNER_CIRCLE && target <= MIDDLE_CIRCLE) {
    return(5)
  }
  else if (target > MIDDLE_CIRCLE && target <= OUTTER_CIRCLE) {
    return(1)
  }
  return(0)
}

score(-0.1, -0.1)