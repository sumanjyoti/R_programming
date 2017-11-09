# This is a modified version of the R code in the
# Sample Lab Exam file
# It computes how often the patient has the virus, 
# if they have a postive test
# It uses an array called virus, which is only
# updated when the patient has a positive test
# It stores a 1 if the patient has the virus
# and stores a 0 if they do not

pos = 0
virus = 0
j=1
for (i in 1:100000)
{
  if (runif(1) <= 0.15)
  {
    if (runif(1) <= 0.95) 
    {
      pos[i] = 1
      virus[j] =1
      j=j+1
    }
    else pos[i] = 0
  } 
  else 
  { 
    if (runif(1) <= 0.02) 
    {
      pos[i] = 1 
      virus[j] = 0
      j=j+1
    }
    else pos[i] = 0
  }
} 
table(pos)
length(virus) #this should be equal to the number of positive tests
sum(virus)/length(virus) 
# this is an estimate of how frequent the patient has the virus
# given they have a positive test
