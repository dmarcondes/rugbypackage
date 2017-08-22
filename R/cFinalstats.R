finalstats <- function(){
  finalstats <- rbind(Game,Team)
  print(finalstats)
  assign("Finalstats",finalstats,.GlobalEnv)
  
}