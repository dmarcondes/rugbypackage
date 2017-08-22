game <- function(x){
  if(x==15){
    Tackle <- c(rep(0,23))
    MissedTackle <- c(rep(0,23))
    RightPass <- c(rep(0,23))
    Turnover <- c(rep(0,23))
    Steal <- c(rep(0,23))
    WrongPass <- c(rep(0,23))
    Conversion <- c(rep(0,23))
    Penalty <- c(rep(0,23))
    ConvertedPenalty <- c(rep(0,23))
    Try <- c(rep(0,23))
    DropGoal <- c(rep(0,23))
    YellowCard <- c(rep(0,23))
    RedCard <- c(rep(0,23))
    Points <- c(rep(0,23))
    
    Game <- data.frame(Tackle,MissedTackle,RightPass,Turnover,Steal,WrongPass,Conversion,Penalty,ConvertedPenalty,Try,DropGoal,YellowCard,RedCard,Points)
    (Game)
    Names <- num15()
    row.names(Game) <- Names
    assign("Names",Names,.GlobalEnv)
    assign("Game",Game,.GlobalEnv)
    players <- 15
    assign("Players",players,.GlobalEnv)}
  
  if(x==7){
    Tackle <- c(rep(0,12))
    MissedTackle <- c(rep(0,12))
    RightPass <- c(rep(0,12))
    Turnover <- c(rep(0,12))
    Steal <- c(rep(0,12))
    WrongPass <- c(rep(0,12))
    Conversion <- c(rep(0,12))
    Penalty <- c(rep(0,12))
    ConvertedPenalty <- c(rep(0,12))
    Try <- c(rep(0,12))
    DropGoal <- c(rep(0,12))
    YellowCard <- c(rep(0,12))
    RedCard <- c(rep(0,12))
    Points <- c(rep(0,12))
    
    Game <- data.frame(Tackle,MissedTackle,RightPass,Turnover,Steal,WrongPass,Conversion,Penalty,ConvertedPenalty,Try,DropGoal,YellowCard,RedCard,Points)
    (Game)
    Names <- num7()
    row.names(Game) <- Names
    assign("Names",Names,.GlobalEnv)
    assign("Game",Game,.GlobalEnv)
    players <- 7
    assign("Players",players,.GlobalEnv)}
}