csapsum.df <- data.frame(Év = numeric(14), Pmm = numeric(14))
for(ttev in 2010:2023) {
    csapsum.df[ttev - 2009, "Év"]  <- ttev
    csapsum <- sum(csap[paste0(ttev,"-01-01/",ttev,"-06-05")], na.rm = TRUE)
    csapsum.df[ttev - 2009, "Pmm"]  <- csapsum
}
