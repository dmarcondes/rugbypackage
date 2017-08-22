wp <-function(x){
  y <- Game[x,6]
  z <- y + 1
  Game[x,6] <- z
  (Game)
  assign("Game",Game,.GlobalEnv)
}