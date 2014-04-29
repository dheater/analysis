baroAltPlot <- function (surfacePressure, pressureVector) {
  x = seq(from=0, length.out=length(pressureVector), by=0.1)
  y = (10^(log10(pressureVector/surfacePressure)/5.2558797)-1)/(-6.8755856e-6)
  scatter.smooth(y ~ x, ylab="Altitude (ft)", xlab="Time (Seconds)",
    col=rgb(0,0,1,0.2),pch=20, family="gaussian", degree=2)
  maxAlt = round(max(y))
  maxAltTime = which.max(y)/10
  maxAltStr = paste("Max altitutude =", maxAlt, "ft")
  text(maxAltTime, maxAlt, maxAltStr, pos = 4)
}
