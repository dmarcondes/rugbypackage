team <- function(){
  Tackle <- c((besttackle()),(round(meantackle(),2)),(sum(Game[,1])))
    
  MissedTackle <- c((bestmissedtackle()),(round(meanmissedtackle(),2)),(sum(Game[,2])))
    
  RightPass <- c((bestrightpass()),(round(meanrightpass(),2)),(sum(Game[,3])))
    
  Turnover <- c((bestturnover()),(round(meanturnover(),2)),(sum(Game[,4])))
    
  Steal <- c((beststeal()),(round(meansteal(),2)),(sum(Game[,5])))
    
  WrongPass <- c((bestwrongpass()),(round(meanwrongpass(),2)),(sum(Game[,6])))
    
  Conversion <- c((bestconversion()),(round(meanconversion(),2)),(sum(Game[,7])))
    
  Penalty <- c((bestpenalty()),(round(meanpenalty(),2)),(sum(Game[,8])))
    
  ConvertedPenalty <- c((bestconvertedpenalty()),(round(meanconvertedpenalty(),2)),(sum(Game[,9])))
    
  Try <- c((besttry()),(round(meantry(),2)),(sum(Game[,10])))
    
  DropGoal <- c((bestdropgoal()),(round(meandropgoal(),2)),(sum(Game[,11])))
    
  YellowCard <- c((bestyellowcard()),(round(meanyellowcard(),2)),(sum(Game[,12])))
    
  RedCard <- c((bestredcard()),(round(meanredcard(),2)),(sum(Game[,13])))
    
  Points <- c((bestpoint()),(round(meanpoint(),2)),(sum(Game[,14])))
  
  nam <- c("Best Players","Mean","Total")
  Data <- data.frame(Tackle,MissedTackle,RightPass,Turnover,Steal,WrongPass,Conversion,Penalty,ConvertedPenalty,Try,DropGoal,YellowCard,RedCard,Points)
  row.names(Data) <- nam
  (Data)
  assign("Team",Data,.GlobalEnv)
  print(Data)
    
}