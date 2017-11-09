pos = 0
pos_virus = 0

for (i in 1:100000){
  if(runif(1)<=.15){
    if(runif(1)<=.95){
      pos = pos+1
      pos_virus = pos_virus + 1
    }}
  else{
    if(runif(1)<0.02)
      pos = pos+1
  }
}

prob_of_having_disease = pos_virus/pos
# different solution 
# different solution 
# different solution 
pos = 0
for (i in 1:100000)
{
  if (runif(1) <= 0.15)
  {
    if (runif(1) <= 0.95) pos[i] = 1 else pos[i] = 0
  } 
  else 
  { 
    if (runif(1) <= 0.02) pos[i] = 1 else pos[i] = 0
  }
} 
table(pos)

# Q7
pos = 0
good_test = 0
for(i in 1:100000){
  if((runif(1)<=0.15)&&(runif(1)<=0.95)&&(runif(1)<=0.95)){
    good_test = good_test+1
    pos = pos+1
  }
  # else if((runif(1)<=0.15)&&(runif(1)<=0.95)&&(runif(1)<=0.85)&&(runif(1)<=0.02)){
  #   pos = pos+2
  # }
  else if((runif(1)<=0.02)&&(runif(1)<=0.85)&&(runif(1)<=0.02)){
    pos = pos+1
  }
}

prob_of_two_good_test = good_test/pos