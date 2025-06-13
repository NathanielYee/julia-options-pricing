# This is a black scholes model written in julia
using Distributions
s = 1 #spot
K = 1 #Strike Price
r =1 #rf rate
t = 1 #time to maturity (days)
σ = 1 #volatility

dist = Normal(0,1)
d1 = log(s/K) + (r+(σ^2/2)) * t
d2 = d1 - (σ * sqrt(t))
C = (cdf(dist,d1) * s) - (cdf(dist,d2) * (* K * ℯ^(r*t)))