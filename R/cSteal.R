s <-function(x){
  y <- Game[x,5]
  z <- y + 1
  Game[x,5] <- z
  (Game)
  assign("Game",Game,.GlobalEnv)
}