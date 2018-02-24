# Set parameter values
# Units are in micrograms/g soil (ug/g)


parms<-c(


# Tref = 25, # Reference temperature at which rates are given
NC = 0.141 , # C:N microbial (MASS)
PC = 0.083,  # C:P microbial (MASS)

Q_10 = 2.2, # Q10 temperature response


alphaA = 0.0120,    #density dependent death rate on autotrophs
alphaH = 0.0120,    #density dependent death rate on heterotrophs

g_Sub = 0, # proportional leaching loss of substrate (carbon, nitrogen, phosphorus)
g_DIN = 0, # proportional leaching loss of DIN
g_DIP = 0, # proportional leaching loss of DIP


exA = 0.0140, # exudates from Autotrophs
exH = 0.0140, # exudates from Heterotrophs

p_sub = 0.20, # slow-down parameter for subglacial growth rate
K_sub = 0.80, # half-saturation parameter for subglacial growth



ImaxA = 1.40, # Maximum growth rates of autotrophs
ImaxH = 1.24, # Maximum growth rates of heterotrophs

K_L = 1.85 , # Light half saturation for autotrophs


K_S = 349  , # substratre half saturation for Heterotrophs

K_N = 49.209 , # (NC = 0.141)   DIN half saturation

DINt = 0 ,  # (NC = 0.141)   Nitrogen concentration threshold for N-fixation starting

K_N2 = 393.672 , # (8*K_N) shape of logistic function for n-fixation switch

K_P = 28.967 , # (PC = 0.083)    DIP half saturation

n_f = 0.50 , # downscaling of efficiency and growth whilst n-fixers are fixing 


JS1 = 0.68 ,  # heterotrophic use of S1 
JS2 = 0.15 ,   # heterotrophic use of S2 
q = 0.30 , # proportion of losses that becomes labile

Y_A = 0.200 , #BGE of autotrophs (Yield)
Y_H = 0.200 ,  #BGE oh heterotrophs (Yield)

v_Sub = 0.60, # Proportion of substrate deposition available to microbes
v_DIN = 0.01, # Proportion of N-deposition available to microbes
v_DIP = 0.01, # Proportion of DIP-deposition available to microbes


dor = 0.285 # active fraction


)

#...............................



