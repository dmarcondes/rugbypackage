mt <-function(x){
      y <- Game[x,2]
      z <- y + 1
      Game[x,2] <- z
      (Game)
      assign("Game",Game,.GlobalEnv)
            }
