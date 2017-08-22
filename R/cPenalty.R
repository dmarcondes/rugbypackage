pen <-function(x){
  y <- Game[x,8]
  z <- y + 1
  Game[x,8] <- z
  (Game)
  assign("Game",Game,.GlobalEnv)
}