# This is a black scholes model written in julia
using Distributions
s = 100 #spot
K = 105 #Strike Price
r =.03 #rf rate
t = 1/365 #time to maturity (days)
σ = 1 #volatility

dist = Normal(0,1)
d1 = (log(s/K) + (r+(σ^2/2)) * t) / (σ * sqrt(t))
d2 = d1 - (σ * sqrt(t))
C = (cdf(dist,d1) * s) - (cdf(dist,d2) * (K * ℯ^(-r*t)))
print(C)