for(ttev in 2010:2023) {
    csapfilename <- dir(paste0("Hidegvíz/", ttev, "/Hellmann"), patt = "^csap", full.names = TRUE)[1]
    print(ttev)
    print(scan(file=csapfilename, what = character(), sep = "\n"))
}

read.prec <- function(x) {
    forsep <- scan(file=csapfilename, what = character(), sep = "\n", n = 2)
    print(grep(";", forsep))
}
