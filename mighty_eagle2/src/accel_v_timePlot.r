accel_v_timePlot <- function (time, accel, axis) {
  accG = accel/9.8
  title = paste("Acceleration vs Time - ", axis, "Axis")
  plot(accG ~ time, ylab="Acceleration (G's)", xlab="Time (Seconds)",
    main=title, col=rgb(0,0,1,0.2), pch=20)
  abline(0, 0)
}
