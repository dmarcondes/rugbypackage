y <-function(x){
  y <- Game[x,12]
  z <- y + 1
  Game[x,12] <- z
  (Game)
  assign("Game",Game,.GlobalEnv)
}