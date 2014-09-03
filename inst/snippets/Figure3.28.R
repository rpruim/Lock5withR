BootP400 <- do(1000) * rflip(400, .52)
head(BootP400, 3)
cdata(0.95, prop, data=BootP400)
dotPlot(~ prop, width=.005, groups= (0.472 <= prop & prop<= 0.568), data=BootP400)


