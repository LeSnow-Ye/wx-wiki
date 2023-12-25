qnorm(0.1, mean = 0, sd = 1, log = FALSE)
qnorm(0.95, mean = 0, sd = 1, log = FALSE)


 x <- seq(-5,5,0.01)
 y <- pnorm(x,mean = 0, sd = 1.0, log = FALSE)
 plot(x,y)
 plot(x,y,type = 'l')

