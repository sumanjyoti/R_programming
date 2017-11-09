## bayes
given_output = c(1,2,3,1,1,1,1,2,2,2)
trans = matrix(c(0.9,0.09,0.01,0.01,0.9,0.09,0.09,0.01,0.9),3,3)

for(i in 1:10){
  given_output[i] = 
  { prob_fx = trans[1,]
  noise_fx = noise_prob[1,]
  } else if(seq == 2){ prob_fx = trans[2,]
  noise_fx = noise_prob[2,]
  } else { prob_fx = trans[3,]
  noise_fx = noise_prob[3,]}
}