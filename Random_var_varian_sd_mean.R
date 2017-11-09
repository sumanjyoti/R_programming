# Random variable file 
# example 1

stack_size <- c(100,200,500,500,400,200,80,20)
stack_type <- 0:7

#plot(stack_type,stack_size,xlab = "number of stack size",type = "b")
#cumulative prob
# ex 2

Failures<- 0:5
cumprob <- c(.17, .44, .68, .86, .94, 1)
plot(Failures, cumprob, xlab = "failures", ylab = "probability",type = "s")

# example question1 
#The number of hardware failures of a computer sys-
#  tem in a week of operation has the following pdf:
no_of_fail = 0:6
prob_fail = c(0.18,0.28,0.25,0.18,0.06,0.04,0.01)
expected_fail_week = no_of_fail * prob_fail
expected_fail_each_week = sum(expected_fail_week)

#A quarter of the source programs submitted by a
#certain programmer compile successfully. Each day
#the programmer writes five programs
no_complies = 0:5
no_of_fail =  c(.237, .396, 0.264, .088, .014, .001)
avg_no_compiles = sum(no_complies*no_of_fail)
#  Randomw variable file 2
# Variance = s^2= sum((x-mean(x))*p)
# standard_dev = sqrt(variance)

# calculating variance
variance = sum(((no_complies-avg_no_compiles)^2)*no_of_fail)
# check once
#Example: Hardware Failures
no_of_fail = 0:6
prob_fail = c(0.17, .27, .25, .17, .08, .04, .02)
fun_loss = 10*no_of_fail
fun_loss = fun_loss + 200
moment_loss_mean = sum((10*no_of_fail + 200)*prob_fail)
moment_loss_mean = sum(fun_loss*prob_fail)
moment_loss_var = sum(((fun_loss - moment_loss_mean)^2)*prob_fail)

## doing byanother method

moment_mean_old = (sum(no_of_fail*prob_fail))
moment_mean = 200+(10*(moment_mean_old))
moment_loss_var_old = sum(((no_of_fail-moment_mean_old)^2)*prob_fail)
moment_loss_var = 100*(moment_loss_var_old)

# Example:
#The average salary of new employees in a computer firm
#is 27,500 euros with a variance of 400

salary_mean = 27500
salary_var = 400
#salary = 0:5
#new_sal = 100 + (1.1*salary)
new_sal_mean = 100+(1.1*salary_mean)
new_sal_var = ((1.1^2)*(salary_var))