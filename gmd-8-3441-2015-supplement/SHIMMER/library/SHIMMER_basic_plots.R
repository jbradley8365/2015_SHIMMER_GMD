

par(mfrow=c(3,3))


plot(out$years,out$A1,type='l', xlab='years', main='Subglacial Autotrophs', ylab='µg/g')
plot(out$years,out$A2,type='l', xlab='years', main='Autotrophs', ylab='µg/g')
plot(out$years,out$A3,type='l', xlab='years', main='N-fixing Autotrophs', ylab='µg/g')
plot(out$years,out$H1,type='l', xlab='years', main='Subglacial Heterotrophs', ylab='µg/g')
plot(out$years,out$H2,type='l', xlab='years', main='Heterotrophs', ylab='µg/g')
plot(out$years,out$H3,type='l', xlab='years', main='N-fixing Heterotrophs', ylab='µg/g')
plot(out$years, out$S_total,type='l', xlab='years',main='Total Carbon Substrate',ylab='µg/g')
plot(out$years,out$S1,type='l', xlab='years', main='Labile Substrate', ylab='µg/g')
plot(out$years,out$S2,type='l', xlab='years', main='Refractory Substrate', ylab='µg/g')


x11()
par(mfrow=c(3,3))
plot(out$years, out$Cmic_total,type='l', xlab='years',main='Total microbial biomass',ylab='µg/g')
plot(out$years, out$PON_total,type='l', xlab='years',main='Total PON',ylab='µg/g')
plot(out$years, out$POP_total,type='l', xlab='years',main='Total POP',ylab='µg/g')
plot(out$years, out$DIN,type='l', xlab='years',main='DIN',ylab='µg/g')
plot(out$years, out$PON1,type='l', xlab='years',main='PON1',ylab='µg/g')
plot(out$years, out$PON2,type='l', xlab='years',main='PON2',ylab='µg/g')
plot(out$years, out$DIP,type='l', xlab='years',main='DIP',ylab='µg/g')
plot(out$years, out$POP1,type='l', xlab='years',main='POP1',ylab='µg/g')
plot(out$years, out$POP2,type='l', xlab='years',main='POP2',ylab='µg/g')


x11()

plot(out$years,out$Cmic_total,axes = FALSE, xlab = NA, ylab = NA, type='l',xlim=c(0,80), ylim=c(0,120),xaxs = 'i' ,yaxs = 'i')
title(xlab='Years', main='Total biomass',font.main = 1, ylab=expression(paste("µg C g"^"-1")))
points(years_C_mic,mean_C_mic, col="red2",pch=19,cex=0.5)
axis(side = 1,at=c(0,30,60,90,120))
axis(side = 2, las = 1,at=c(0,30,60,90,120))
legend(1,120, c("Model", "Observations"), col=c("black","red2"), cex=0.8,pt.cex=c(1,0.5),bty='n',lwd=c(1,1),lty=c(1,0),pch=c(NA,19))


