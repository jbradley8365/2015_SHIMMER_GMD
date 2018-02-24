# Set the initial conditions
# Units are micrograms per gram (ug/g)

# State variables:

# A1 = Autotrophs (subglacial chemoautotrophs)
# A2 = Autotrophs (soil)
# A3 = Autotrophs (soil N-fixers)
# H1 = Heterotrophs (subglacial)
# H2 = Heterotrophs (soil)
# H3 = Heterotrophs (soil N-fixers)
# S1 = Particulate Carbon Substrate - Labile
# S2 = Particulate Carbon Substrate - Refractory
# DIN = Dissolved Inrganic Nitrogen
# DIP = Dissolved Inorganic Phosphorus
# PON1 = Organic Nitrogen - Labile
# PON2 = Organic Nitrogen - Refractory
# POP1 = Organic Phosphorus - Labile
# POP2 = Organic Phosphorus - Refractory



# Derived variables:

# cum_A1<-xx[15] # Cumulative A1 (increase in biomass)
# cum_A2<-xx[16] # Cumulative A2 (increase in biomass)
# cum_A3<-xx[17] # Cumulative A3 (increase in biomass)
# cum_H1<-xx[18] # Cumulative H1 growth
# cum_H2<-xx[19] # Cumulative H2 growth
# cum_H3<-xx[20] # Cumulative H3 growth
# cum_DIC_A<-xx[21] # Cumulative DIC produced by autotrophs
# cum_DIC_H<-xx[22] # Cumulative DIC produced by heterotrophs
# cum_DIN<-xx[23] # Cumulative DIN consumed by everything
# cum_nf<-xx[24] # cum_nf = Cumulative N2 fixed
# cum_I_Sub<-xx[25] # Cumulative input of substrate (multiplied by v_Sub)
# cum_G_X<-xx[26] # Cumulative contribution of deaths and exudates to substrate



start<-c(A1=0.617,
         A2=0.617,
         A3=0.617,
         H1=0.617,
         H2=0.617,
         H3=0.617,
         S1=278.520,
         S2=417.780,
         DIN=0.160,
         DIP=0.500,
         PON1=39.440,
         PON2=59.160,
         POP1=23.120,
         POP2=34.680,
	   cum_A1=0,
	   cum_A2=0,
         cum_A3=0,
	   cum_H1=0,
         cum_H2=0,
	   cum_H3=0,
         cum_DIC_A=0,
	   cum_DIC_H=0,
         cum_DIN=0,
         cum_nf=0,
         cum_I_Sub=0,
         cum_G_X=0
)


#.................................................................................


