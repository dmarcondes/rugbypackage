meanturnover <- function(){
  y<- sum(Game[,4])
  mean <- y/Players
  print(mean)
}