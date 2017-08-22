tu <-function(x){
  y <- Game[x,4]
  z <- y + 1
  Game[x,4] <- z
  (Game)
  assign("Game",Game,.GlobalEnv)
}