par(mfrow = c(2,2))

N = 1

one = .55-round(runif(N))
hist(one, main = paste("Insuring 1, mean  =",round(mean(one), 2)),
     xlab = "profit per insured individual",
     breaks = seq(-.45, .55, .05),
     col = "gray80")

ten = matrix(round(runif(10*N)), nrow = N)
ten.prof = .55-rowMeans(ten)
hist(ten.prof, main = paste("Insuring 10, mean =",round(mean(ten.prof), 2)),
     xlab = "profit per insured individual",
     breaks = seq(-.45, .55, .05),
     col = "gray80")


hundred = matrix(round(runif(100*N)), nrow = N)
hundred.prof = .55-rowMeans(hundred)
hist(hundred.prof, main = paste("Insuring 100, mean  =",round(mean(hundred.prof), 2)),
     xlab = "profit per insured individual",
     breaks = seq(-.45, .55, .05),
     col = "gray80")

thousand = matrix(round(runif(1000*N)), nrow = N)
thousand.prof = .55-rowMeans(thousand)
hist(thousand.prof, main = paste("Insuring 1000, mean  =",round(mean(thousand.prof), 2)),
     xlab = "profit per insured individual",
     breaks = seq(-.45, .55, .05),
     col = "gray80")