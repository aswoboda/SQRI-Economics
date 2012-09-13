
par(mfcol = c(4, 3))
set.seed(1234)

for (k in c(0, 5000, 50000)) {
dist1 = rnorm(10000, 50000, 10000)

dist2 = rnorm(10000, 50000+k, 15000)

par(mar = c(4, 4, 4, 2))
plot(range(c(dist1, dist2)),
     c(0, max(c(density(dist1)$y, density(dist2)$y))),
     type = "n",
     xlab = "values",
     ylab = "relative frequency",
     main = "Distribution of Two Populations",
     axes = F)
axis(1)
lines(density(dist1), lw = 3, col = "blue")
lines(density(dist2), lw = 3, col = "red")

# Now I want to take a sample from each population,
# calculate the mean
# calculate the difference in the means,
# plot the difference.

ss = c(10, 100, 1000)
N = 1000
for (j in ss) {
samplediff = c()
samplet = c()

for (i in 1:N) {
  sample1 = sample(dist1, j)
  sample2 = sample(dist2, j)
  samplediff[i] = mean(sample1) - mean(sample2)
  samplet[i] = t.test(sample1, sample2)$statistic
}
# hist(samplediff, xlim = c(-60000, 60000), 
#      main = "Dist of sample mean differences",
#      xlab = "difference in sample means")

hist(samplet, xlim = c(-100, 10), 
     main = paste("Dist of t-stats, sample size = ", j),
     xlab = "sample t-stat")
}
}