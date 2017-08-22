rc <-function(x){
  y <- Game[x,13]
  z <- y + 1
  Game[x,13] <- z
  (Game)
  assign("Game",Game,.GlobalEnv)
}