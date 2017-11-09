#normal dnorm
#“d” 	returns the height of the probability density function
# “p” 	returns the cumulative density function
# “q” 	returns the inverse cumulative density function (quantiles)
# “r” 	returns randomly generated numbers


# dnorm(x,mean,sd/(variance)^(.5))

curve (dnorm(x, 2, .25), from = 1, to = 3)
curve (pnorm(x, 2, .25), from = 1, to = 3)
curve(qnorm(x, 500, 100), from = 1, to = 3)
curve (rnorm(1000))

#An analogue signal received at a detector (measured in mi-
#crovolts), is normally distributed with a mean of 100 and a
#variance of 256
n=pnorm(120,100,16)-pnorm(110,100,16)
d=1-pnorm(110,100,16)
prob = n/d

qnorm(.90,500,100)


qnorm(.30,50,2)