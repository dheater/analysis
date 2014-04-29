baroLoad <- function(fname) {
    baro=read.csv(fname)
    baro$temp=baro$temp/10
    baro
}
