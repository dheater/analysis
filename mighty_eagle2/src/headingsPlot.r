headingsPlot <- function (time, headings) {
  plot(headings[,1] ~ time, ylab="Heading (degrees)", xlab="Time (Seconds)",
    main="Heading",
    col=rgb(1,0,0,0.2), pch=20)
  points(headings[,2]~time, col=rgb(0,1,0,0.1), pch=20)
  points(headings[,3] ~ time, col=rgb(0,0,1,0.1), pch=20)
  legend("topright", legend=c("Roll","Pitch","Yaw"), pch=20,
    col=c(rgb(1,0,0,0.2), rgb(0,1,0,0.2), rgb(0,0,1,0.2)))
}
