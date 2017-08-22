meanconversion <- function(){
  y <- sum(Game[,7])
  mean <- y/Players
  mean <- round(mean,2)
  print(mean)
}