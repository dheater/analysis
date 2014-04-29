baroTempPlot <- function (tempVector) {
  y = seq(from=0, length.out=length(tempVector), by=0.1)
  plot(tempVector/10 ~ y, ylab="Temperature (C)", xlab="Time (Seconds)",
    col=rgb(0,0,1,0.1),pch=20)
}
