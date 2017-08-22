meanpenalty <- function(){
  y<- sum(Game[,8])
  mean <- y/Players
  print(mean)
}