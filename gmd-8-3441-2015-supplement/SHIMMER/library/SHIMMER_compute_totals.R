
# Totals from state-variables

out$A_total<-out$A1+out$A2+out$A3
out$H_total<-out$H1+out$H2+out$H3
out$S_total<-out$S1+out$S2
out$Cmic_total<- out$A_total + out$H_total
out$PON_total<-out$PON1+out$PON2
out$POP_total<-out$POP1+out$POP2

# Totals from derived-variables

out$cum_A = out$cum_A1 + out$cum_A2 + out$cum_A3
out$cum_H = out$cum_H1 + out$cum_H2 + out$cum_H3

# Derive the rates from the cumulative variables

out$rate_A1[2:(nrow(out))]<-out$cum_A1[2:(nrow(out))] - out$cum_A1[1:(nrow(out)-1)]
out$rate_A1[1]=0
out$rate_A2[2:(nrow(out))]<-out$cum_A2[2:(nrow(out))] - out$cum_A2[1:(nrow(out)-1)]
out$rate_A2[1]=0
out$rate_A3[2:(nrow(out))]<-out$cum_A3[2:(nrow(out))] - out$cum_A3[1:(nrow(out)-1)]
out$rate_A3[1]=0

out$rate_H1[2:(nrow(out))]<-out$cum_H1[2:(nrow(out))] - out$cum_H1[1:(nrow(out)-1)]
out$rate_H1[1]=0
out$rate_H2[2:(nrow(out))]<-out$cum_H2[2:(nrow(out))] - out$cum_H2[1:(nrow(out)-1)]
out$rate_H2[1]=0
out$rate_H3[2:(nrow(out))]<-out$cum_H3[2:(nrow(out))] - out$cum_H3[1:(nrow(out)-1)]
out$rate_H3[1]=0

out$rate_DIC_A[2:(nrow(out))]<-out$cum_DIC_A[2:(nrow(out))] - out$cum_DIC_A[1:(nrow(out)-1)]
out$rate_DIC_A[1]=0
out$rate_DIC_H[2:(nrow(out))]<-out$cum_DIC_H[2:(nrow(out))] - out$cum_DIC_H[1:(nrow(out)-1)]
out$rate_DIC_H[1]=0

out$rate_DIN[2:(nrow(out))]<-out$cum_DIN[2:(nrow(out))] - out$cum_DIN[1:(nrow(out)-1)]
out$rate_DIN[1]=0
out$rate_nf[2:(nrow(out))]<-out$cum_nf[2:(nrow(out))] - out$cum_nf[1:(nrow(out)-1)]
out$rate_nf[1]=0

out$rate_A[2:(nrow(out))]<-out$cum_A[2:(nrow(out))] - out$cum_A[1:(nrow(out)-1)]
out$rate_A[1]=0
out$rate_H[2:(nrow(out))]<-out$cum_H[2:(nrow(out))] - out$cum_H[1:(nrow(out)-1)]
out$rate_H[1]=0


out$rate_I_Sub[2:(nrow(out))]<-out$cum_I_Sub[2:(nrow(out))] - out$cum_I_Sub[1:(nrow(out)-1)]
out$rate_I_Sub[1]=0


out$rate_G_X[2:(nrow(out))]<-out$cum_G_X[2:(nrow(out))] - out$cum_G_X[1:(nrow(out)-1)]
out$rate_G_X[1]=0


#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


# out2 = dataset of all years production values 

year<-c(1:nyears)

annual_A1<-c(1:nyears)
annual_A2<-c(1:nyears)
annual_A3<-c(1:nyears)

annual_H1<-c(1:nyears)
annual_H2<-c(1:nyears)
annual_H3<-c(1:nyears)

annual_DIC_A<-c(1:nyears)
annual_DIC_H<-c(1:nyears)

annual_DIN<-c(1:nyears)
annual_nf<-c(1:nyears)

annual_A<-c(1:nyears)
annual_H<-c(1:nyears)





for(i in 1:nyears) {

annual_A1[i]<-out$cum_A1[i*365+1]-out$cum_A1[(i-1)*365+1]
annual_A2[i]<-out$cum_A2[i*365+1]-out$cum_A2[(i-1)*365+1]
annual_A3[i]<-out$cum_A3[i*365+1]-out$cum_A3[(i-1)*365+1]

annual_H1[i]<-out$cum_H1[i*365+1]-out$cum_H1[(i-1)*365+1]
annual_H2[i]<-out$cum_H2[i*365+1]-out$cum_H2[(i-1)*365+1]
annual_H3[i]<-out$cum_H3[i*365+1]-out$cum_H3[(i-1)*365+1]

annual_DIC_A[i]<-out$cum_DIC_A[i*365+1]-out$cum_DIC_A[(i-1)*365+1]
annual_DIC_H[i]<-out$cum_DIC_H[i*365+1]-out$cum_DIC_H[(i-1)*365+1]

annual_DIN[i]<-out$cum_DIN[i*365+1]-out$cum_DIN[(i-1)*365+1]
annual_nf[i]<-out$cum_nf[i*365+1]-out$cum_nf[(i-1)*365+1]

annual_A[i]<-out$cum_A[i*365+1]-out$cum_A[(i-1)*365+1]
annual_H[i]<-out$cum_H[i*365+1]-out$cum_H[(i-1)*365+1]



out

}

out2<-data.frame(year,annual_A1,annual_A2,annual_A3,annual_H1,annual_H2,annual_H3,annual_DIC_A,annual_DIC_H,annual_DIN,annual_nf,annual_A,annual_H)





#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
#'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

