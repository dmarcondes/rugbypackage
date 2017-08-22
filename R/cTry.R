tr <-function(x){
  y <- Game[x,10]
  z <- y + 1
  Game[x,10] <- z
  m <- Game[x,14]
  Game[x,14] <- m + 5  
  (Game)
  assign("Game",Game,.GlobalEnv)
}