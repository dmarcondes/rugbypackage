bestpenalty <- function(){
  if(Players<15){
    y=12
    maior<-0
    while(y>0){
      z <- Game[y,8]
      if(z>maior){
        maior<-y}
      y <- y-1}
    if(maior==0)
      a <- "None"      
    else
      a <- c(Names[maior])
    print(a, quote = FALSE, max.levels = NULL,
          width = getOption("width"))}
  
  else{
    y=23
    maior <- 0
    while(y>0){
      z <- Game[y,8]
      if(z>maior){
        maior<-y}
      y <- y-1}
    if(maior==0)
      a <- "None"      
    else
      a <- c(Names[maior])
    print(a, quote = FALSE, max.levels = NULL,
          width = getOption("width"))
  }
} 