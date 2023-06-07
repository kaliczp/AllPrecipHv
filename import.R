Sys.setenv(TZ = "UTC")

read.prec <- function(x, printtime = F) {
    require(xts)
    raw <- read.csv2(x, na.strings = c("NA","-"))
    raw.names <- names(raw)
    if(any(raw.names == "ÚjH.mm.")) {
        onlyHmm <- raw[,"ÚjH.mm."]
    } else {
        onlyHmm <- raw[,"ÚjH.mm"]
    }
    raw.time <- as.POSIXct(paste(raw[, "Date"], raw[, "Time"]), format = "%Y.%m.%d %H:%M")
    if(printtime)
        print(raw.time)
    xts(onlyHmm, raw.time)
}

for(ttev in 2010:2023) {
    read.prec(paste0("csap", ttev, ".csv"), printtime=T)
}
