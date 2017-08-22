p <-function(x){
  y <- Game[x,3]
  z <- y + 1
  Game[x,3] <- z
  (Game)
  assign("Game",Game,.GlobalEnv)
}