dg <-function(x){
  y <- Game[x,11]
  z <- y + 1
  Game[x,11] <- z
  m <- Game[x,14]
  Game[x,14] <- m + 3  
  (Game)
  assign("Game",Game,.GlobalEnv)
}