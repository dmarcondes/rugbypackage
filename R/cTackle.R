ta <-function(x){
  y <- Game[x,1]
  z <- y + 1
  Game[x,1] <- z
  (Game)
  assign("Game",Game,.GlobalEnv)
}