accelsPlot <- function (time, accels) {
  accG = accels/9.8
  plot(accG[,1] ~ time, ylab="Acceleration (G's)", xlab="Time (Seconds)",
    main="Accelerations",
    col=rgb(1,0,0,0.2), pch=20)
  points(accG[,2]~time, col=rgb(0,1,0,0.1), pch=20)
  points(accG[,3] ~ time, col=rgb(0,0,1,0.1), pch=20)
  legend("topright", legend=c("x","Y","Z"), pch=20,
    col=c(rgb(1,0,0,0.2), rgb(0,1,0,0.2), rgb(0,0,1,0.2)))
    abline(0, 0)
}
