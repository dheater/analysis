accelMagPlot <- function (time, accels) {
  totalAcc = sqrt(accels[,1]^2+accels[,2]^2+accels[,3]^2)
  plot(totalAcc ~ time, ylab="Total Acceleration (m/s)", xlab="Time (Seconds)",
    main="Accelerations",
    col=rgb(0,0,0,0.2), pch=20)
}
