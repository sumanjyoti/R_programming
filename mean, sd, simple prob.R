sam <- c(9,14,13,9,4,2,1)
sum_sam <-sum(sam)
p_sam <- sam/sum_sam
round(p_sam,2)
fail <- 0:6
plot(fail,p_sam,xlab = "Number of Hardware fail in week", type = "h")
