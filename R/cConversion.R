con <-function(x){
  y <- Game[x,7]
  z <- y + 1
  Game[x,7] <- z
  m <- Game[x,14]
  Game[x,14] <- m + 2  
  (Game)
  assign("Game",Game,.GlobalEnv)
}