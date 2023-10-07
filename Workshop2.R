install.packages('mosaic')
library(mosaic)

plotDist('norm', mean = 10, sd = 2, kind = 'density')
plotDist('norm', mean = 10, sd = 2, kind = 'cdf')
plotDist('norm', mean = 0, sd = 1, kind = 'cdf')

plotDist('binom', size = 20, prob = 0.7)
plotDist('binom', size = 20, prob = 0.2)
plotDist('binom', size = 100, prob = 0.4)

plotDist('chisq', df = 2, kind = 'density')
plotDist('chisq', df = 4, kind = 'density')
plotDist('chisq', df = 6, kind = 'density')
plotDist('chisq', df = 8, kind = 'density')
plotDist('chisq', df = 299, kind = 'density')

plotDist('f', df1 = 19, df2 = 29)
plotDist('f', df1 = 10, df2 = 10)
plotDist('f', df1 = 499, df2 = 499)

plotDist('t', df = 4, kind = 'density')
plotDist('t', df = 4, col = 'red', kind = 'density')
plotDist('norm', mean = 0, sd = 1, col = 'blue', kind = 'density', add = TRUE)

plotDist('t', df = 299, col = 'red', kind = 'density')
plotDist('norm', mean = 0, sd = 1, col = 'blue', kind = 'density', add = TRUE)

y = runif(500, 2, 5)
plot(y, exp(y))

y = runif(500, 2, 5)
plot(y, exp(-y))

plotDist('exp', params=list(1), col='blue', kind='density')
plotDist('exp', params=list(2), col='green', kind='density', add=TRUE)
plotDist('exp', params=list(3), col='orange', kind='density', add=TRUE)
plotDist('exp', params=list(4), col='red', kind='density', add=TRUE)

plotDist('exp', params=list(1), col='blue', kind='cdf')
plotDist('exp', params=list(2), col='green', kind='cdf', add=TRUE)
plotDist('exp', params=list(3), col='orange', kind='cdf', add=TRUE)
plotDist('exp', params=list(4), col='red', kind='cdf', add=TRUE)

pnorm(-1)

xpnorm(-1)
xpnorm(2.15)
xpnorm(1.35)
xpnorm(1.64)
xpnorm(1.28)
xpnorm(1.96)
xpnorm(-1.64)

xpnorm(c(-1.96, 1.96))

# Challenge 1
pnorm(1.285)
xpnorm(c(-1.285, 1.285))

# Challenge 2
pnorm(0.386)
xpnorm(-0.386)
