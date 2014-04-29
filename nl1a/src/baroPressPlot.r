require(pracma) # for the Savitzky-Galoy filter.

baroPressPlot <- function (pressureVector, i_filt = 2) {
    # Plot the raw data points.
    x = seq(from=0, length.out=length(pressureVector), by=0.1)
    plot(pressureVector ~ x, ylab="Pressure (Pascal)", xlab="Time (Seconds)",
        col=rgb(0,0,1,0.1),pch=20)
    usr = par("usr")

    # Plot the filtered data points.
    filt_width = i_filt*2 + 1
    sg = savgol(pressureVector, filt_width, 2, 0)
    # The first derivative is used to color the direction of the pressure change.
    sg2 = savgol(pressureVector, filt_width, 2, 1)
    rng = seq(from=filt_width, to=length(x)-filt_width)
    points(x[rng], sg[rng],
        pch=20, col=rgb(sg2[rng]>=0,sg2[rng]<0,0.1))

    # Print the number of filter elements in a corner of the plot.
    text(usr[2], usr[4], paste("Filter width = ", filt_width), adj=c(1,1))

    # Add a legend
    legend("bottomleft", legend=c("Raw","Filtered decreasing","Filtered increasing"),
        pch=20, col=c(rgb(0,0,1,0.2), rgb(0,1,0,0.2), rgb(1,0,0,0.2)))
}
