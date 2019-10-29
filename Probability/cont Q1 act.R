set.seed(16,sample.kind = "Rounding")

act_scores <- rnorm(10000,20.9,5.7)


pnorm(10,mean(act_scores),sd(act_scores))

