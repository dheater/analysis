require(pracma) # for the Savitzky-Galoy filter.

baroAltPlot <- function (time, surfacePressure, pressureVector, i_filt = 2) {
    #x = seq(from=0, length.out=length(pressureVector), by=0.1)
    # Convert pressure to altitude.
    y = (10^(log10(pressureVector/surfacePressure)/5.2558797)-1)/(-6.8755856e-6)

    # Plot the raw data points.
    plot(y ~ time, ylab="Altitude (ft)", xlab="Time (Seconds)",
        col=rgb(0,0,1,0.2),pch=20)
    usr = par("usr")

    # Plot the filtered data points.
    filt_width = i_filt*2 + 1
    sg = savgol(y, filt_width, 2, 0)
    # The first derivative is used to color the direction of the pressure change.
    sg2 = savgol(y, filt_width, 2, 1)
    rng = seq(from=filt_width, to=length(time)-filt_width)
    points(time[rng], sg[rng], pch=20,
        col=rgb(sg2[rng]<0,sg2[rng]>=0,0,0.4))

    # Print the number of filter elements in a corner of the plot.
    text(usr[2], usr[4], paste("Filter width = ", filt_width), adj=c(1,1))

    # Add the max altitiude to the plot.
    maxAlt = round(max(sg))
    maxAltTime = which.max(sg)/10
    maxAltStr = paste("Max altitutude =", maxAlt, "ft")
    text(maxAltTime, maxAlt, maxAltStr, pos = 4)

    # Add a legend
    legend("topleft", legend=c("Raw","Filtered decreasing","Filtered increasing"),
        pch=20, col=c(rgb(0,0,1,0.2), rgb(0,1,0,0.2), rgb(1,0,0,0.2)))
}
