meanall <- function(){
  y<- sum(Game[,7])
  mean <- y/Players
  print("Conversion")
  print(mean)
  y<- sum(Game[,9])
  mean <- y/Players
  print("Converted Penalty")
  print(mean)
  y<- sum(Game[,11])
  mean <- y/Players
  print("Drop Goal")
  print(mean)
  y<- sum(Game[,2])
  mean <- y/Players
  print("Missed Tackle")
  print(mean)
  y<- sum(Game[,8])
  mean <- y/Players
  print("Penalty")
  print(mean)
  y<- sum(Game[,14])
  mean <- y/Players
  print("Point")
  print(mean)
  y<- sum(Game[,13])
  mean <- y/Players
  print("Red Card")
  print(mean)
  y<- sum(Game[,3])
  mean <- y/Players
  print("Right Pass")
  print(mean)
  y<- sum(Game[,5])
  mean <- y/Players
  print("Steal")
  print(mean)
  y<- sum(Game[,1])
  mean <- y/Players
  print("Tackle")
  print(mean)
  y<- sum(Game[,10])
  mean <- y/Players
  print("Try")
  print(mean)
  y<- sum(Game[,4])
  mean <- y/Players
  print("Turnover")
  print(mean)
  y<- sum(Game[,6])
  mean <- y/Players
  print("Wrong Pass")
  print(mean)
  y<- sum(Game[,12])
  mean <- y/Players
  print("Yellow Card")
  print(mean)
}