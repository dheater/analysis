gyrosPlot <- function (time, gyros) {
  dps=gyros*180/pi
  plot(dps[,1] ~ time, ylab="Angular Rate (degrees/sec)", xlab="Time (Seconds)",
    main="Angular Acceleration",
    col=rgb(1,0,0,0.2), pch=20)
  points(dps[,2]~time, col=rgb(0,1,0,0.1), pch=20)
  points(dps[,3] ~ time, col=rgb(0,0,1,0.1), pch=20)
  legend("topright", legend=c("x","Y","Z"), pch=20,
    col=c(rgb(1,0,0,0.2), rgb(0,1,0,0.2), rgb(0,0,1,0.2)))
}
