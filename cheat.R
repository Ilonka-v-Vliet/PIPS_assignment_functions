cheat = function(exercise_num) {
  # exercise_num should be of the format "Q3.1.x" where x is the exercise
  # you want to see the answer to
  if (exercise_num == "Q3.1.17") {
    return("ctrl + shift + a")
  } else if (exercise_num == "Q3.1.16") {
    return("rbind(1:3, 4:6 * 2, 7:9 * 3)")
  } else if (exercise_num == "Q3.1.12") {
    return(c("library(quantmod)",
             "getSymbols('AMZN', from = '2023-01-01', to = '2023-12-31')",
             "chartSeries(AMZN)"))
  } else {
    stop("Exercise_num either formatted incorrectly, or not implemented")
  }
}
