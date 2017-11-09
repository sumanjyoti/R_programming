# h s d b e
p_s = 0.3
p_d = 0.4

p_bh = 0.7
p_bnh = 0.1
p_eh = 0.8
p_enh = 0.1

p_hsd = 0.8
p_hnsd = 0.5
p_hsnd = 0.4
p_hnsnd = 0.1

#prob <- function(h,s,d){ prod(h,s,d) }
p_h = 0
p_hs = 0
for (i in 1:10000){
  # prob(h,s,d)
  if ((runif(1)<= p_hsd)&&(runif(1)<= p_s)&&(runif(1)<= p_d)){ p_h = p_h+1 
  p_hs = p_hs+1}
  else if((runif(1)<= p_hnsd)&&(runif(1)<= (1-p_s))&&(runif(1)<= p_d)){ p_h = p_h+1}
  else if((runif(1)<= p_hsnd)&&(runif(1)<= p_s)&&(runif(1)<= (1-p_d))){ p_h = p_h+1 
  p_hs = p_hs+1}
  else if((runif(1)<= p_hnsnd)&&(runif(1)<= (1-p_s))&&(runif(1)<=(1-p_d))){ p_h = p_h+1}
}
# P(h/s) = P(h/sAd)*P(h/sAnd)
# P(h)
p_hs = p_hs/p_h
p_h = p_h/i
# p(e/s) 
p_es = 0
for( i in 1:10000){
  if ((runif(1)<=p_eh)&&(runif(1)<=p_hs)){p_es = p_es+1}
  else if(((runif(1)<=p_enh)&&runif(1)<=(1-p_hs))){p_es = p_es+1}
}

p_es = p_es/i