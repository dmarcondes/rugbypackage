\name{Rugby}
\alias{Rugbystats}
\alias{Rugbystatistics}
\docType{package}
\title{
Player statistics in a rugby game.

}
\description{
Compute rugby game data from functions, creating a data frame with all the stats for each of the 23 players in a union game or all 12 players in a sevens game from one of the teams. Use functions to calculate the best players in each aspect and the average performance from the team in each aspect.
}
\details{
\tabular{ll}{
Package: \tab Rugby\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-04-14\cr
License: \tab GPL-2\cr
}
1 - Load the package and run the function game(15) if you want to get the stats from a rugby union game or game(7) if you want to get the stats from a rugby sevens game.

2 - Type all the name of the players.

3 - Computed the statistics using the commands above:

con(#) - if player number # scored a conversion.

tu(#) - if the player number # committed a turnover.

p(#) if the player number # passed the ball.

conp(#) - if the player number # converted a penalty.

pen(#) - if the player number # committed a penalty.

wp(#) - if the player number # missed the pass.

mt(#) - if the player number # missed a tackle.

s(#) - if the player number # stolen the ball.

ta(#) if the player number # tackled.

tr(#) - if the player number # scored a try.

dg(#) - if the player number # scored a drop goal.

y(#) - if the player number # received a yellow card.

rc(#) - if player number # received a red card.

team() - display the team stats.

subt() - if a player is substituted.

meanall() - display the mean of all aspects.

total() - display the total of points of the team.

4 - finalstats() - display the final statistics after the game.
}
\author{
Diego Ribeiro Marcondes

Maintainer: Diego Marcondes <diegormmarcondes@gmail.com>

}
\references{
IRB Laws (Rugby laws) http://www.irblaws.com/
}

\keyword{ rugby, game}
\seealso{

~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
dp()
dp <-function(1){
  y <- Game[1,11]
  z <- y + 1
  Game[1,11] <- z
  m <- Game[1,14]
  Game[1,14] <- m + 3  
  (Game)
  assign("Game",Game,.GlobalEnv)
}
}
