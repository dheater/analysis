baroPressPlot <- function (time, pressureVector) {
  plot(pressureVector ~ time, ylab="Pressure (Pascal)", xlab="Time (Seconds)",
    col=rgb(0,0,1,0.1),pch=20)
}
