require(pracma) # for the Savitzky-Galoy filter.

altTest <- function (surfacePressure, pressureVector, i_filt = 2) {

    # Create a relative time vector.
    x = seq(from=0, length.out=length(pressureVector), by=0.1)

    # Create a dataframe that we will use to store the dataset.
    df=data.frame(x)

    # Convert pressure to altitude.
    y = (10^(log10(pressureVector/surfacePressure)/5.2558797)-1)/(-6.8755856e-6)

    sgy = matrix(nrow=length(x), ncol=length(eyes))
    sgdy = matrix(nrow=length(x), ncol=length(eyes))

    # Plot the raw data points.
    plot(y ~ x, ylab="Altitude (ft)", xlab="Time (Seconds)",
        col=rgb(0,0,1,0.2),pch=20)
    usr = par("usr")

    # Calculate the filtered data points.
    filt_width = i_filt*2 + 1
    sg = savgol(y, filt_width, 2, 0)

    # Calculate the first derivative inidicating the rate of pressure change.
    sg2 = savgol(y, filt_width, 2, 1)
    rng = seq(from=filt_width, to=length(x)-filt_width)
    points(x[rng], sg[rng], pch=20,
        col=rgb(sg2[rng]<0,sg2[rng]>=0,0,0.4))

    sgy[rng] = sg
    sgdy[rng] = sgdy


    sg[rng]
}
