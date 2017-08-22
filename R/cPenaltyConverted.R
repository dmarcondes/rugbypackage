conp <-function(x){
  y <- Game[x,9]
  z <- y + 1
  Game[x,9] <- z
  m <- Game[x,14]
  Game[x,14] <- m + 3  
  (Game)
  assign("Game",Game,.GlobalEnv)
}