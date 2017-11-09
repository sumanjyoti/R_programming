# p(x) = ((M x)(L n-x))/(N n)
# p(x) = dhyper(x, M, L ,n)
# from example dhyper(2, 13, 39, 6)

# q1
no_of_cards = 0:5
prob = dhyper(no_of_cards,13,39,5)
plot(no_of_cards,prob,type = 'h')

#q2
no_of_defects = 0:3
prob_defect = dhyper(no_of_defects,3,3,3)

#q3
no_of_defects = 0:4
prob_defect = dhyper(no_of_defects,4,16,10)

#q4
no_of_defects = 0:30
prob_defect = dhyper(no_of_defects,30,70,20)

# choose

choose(7,3)

#cumulative pnc
par(mfrow = c(2,2))
x<- 0:5 #Example 1
plot(x, phyper(x, 13, 39, 5),
     xlab = "Number of Diamonds",
     type = "s", ylab = "P(X <=x)",
     main = "N = 52, M = 13, n = 5")

# binomial distribution
#(n C x)*(p^x)*(1-p)^(n-x)
# dbinom(x, size=n, prob) 
dbinom(4, size=12, prob=0.2) 