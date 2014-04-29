radar <- function (alt, d, dt=0.1, rate=18) {
    length_alt = length(alt)
    x = seq(from=0, length.out=length_alt, by=dt)
    theta=atan2(alt,d)*180/pi
    dy = theta[2:length_alt]-theta[1:length_alt-1]

    # Plot the radar angle.
    plot(theta ~ x, ylab="Degrees", xlab="Time (Seconds)",
        col=rgb(0,0,1,0.2),pch=20)
    usr = par("usr")

    # Plot the angular rate of change.
    points(dy ~ x[1:length_alt-1], xlab="Time (Seconds)",
        col=rgb(0,1,0,0.2),pch=20)

    # Draw lines denoting the max table rotation rate.
    abline(rate*dt, 0, col="red")
    abline(-rate*dt, 0, col="red")
    text(0, rate*dt, paste("Max rate = ", rate, "degrees/sec"), pos = 3)

    # Add a legend
    legend("topleft", legend=c("Radar Angle","Delta Angle"),
        pch=20, col=c(rgb(0,0,1,0.2), rgb(0,1,0,0.2)))

    # Add the distance from radar to the pad.
    text(usr[2], usr[4], paste("Distance to pad = ", d, "ft"), adj=c(1,1))
}
