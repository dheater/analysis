accel_5gPlot<- function (time, accel, axis) {
  accG = accel/9.80665
  title = paste("Acceleration vs Time - ", axis, "Axis")
  plot(accG ~ time, ylab="Acceleration (G's)", xlab="Time (Seconds)",
    ylim=c(-5,5), main=title, col=rgb(0,0,1,0.2), pch=20)
    abline(0, 0)
}
