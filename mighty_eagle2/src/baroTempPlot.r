baroTempPlot <- function (time, tempVector) {
  plot(tempVector ~ time, ylab="Temperature (C)", xlab="Time (Seconds)",
    col=rgb(0,0,1,0.1),pch=20)
}
