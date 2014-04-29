accGyroPlot <- function (time, accel, gyro, axis) {
  accG = accel/9.8
  title = paste("Acceleration vs Time - ", axis, "Axis")
  accPlot = xyplot(accG ~ time, panel=function(x,y){
    panel.xyplot(x,y)
    panel.abline(0,0)},
    col=rgb(0,0,0,0.2))
  gyroPlot = xyplot(gyro ~ time)
  doubleYScale(accPlot, gyroPlot)
  #accPlot
  #gyroPlot
}
