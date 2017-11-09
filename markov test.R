### bayes for markov

trans = matrix(c(0.9,0.09,0.01,0.01,0.9,0.09,0.09,0.01,0.9),3,3)
noise_prob = matrix(c(0.9,0.05,0.05,0.05,0.9,0.05,0.05,0.05,0.9),3,3)

bayes_prob = 
symbol = 0
sequence_markov = 1
seq = 0
noise_fx = 0
noise_array=0
noise_problem <- function(noise_fx){
  if(runif(1)<= noise_fx[1]){noise_seq = 1 
  } else if(runif(1) <= noise_fx[2]){noise_seq = 2
  } else {noise_seq = 3}
  return(noise_seq)
}

recr_fun <- function(i,seq,sequence_markov = 1){
  if(seq == 1){ prob_fx = trans[1,]
  noise_fx = noise_prob[1,]
  } else if(seq == 2){ prob_fx = trans[2,]
  noise_fx = noise_prob[2,]
  } else { prob_fx = trans[3,]
  noise_fx = noise_prob[3,]}
  
  if(runif(1)<= prob_fx[1]){seq = 1 
  noise_array[i] =noise_problem(noise_fx)
  } else if(runif(1)<= prob_fx[2]){seq = 2
  } else if(runif(1)<= prob_fx[3]){seq = 3}
  sequence_markov[i] = seq
  i=i-1
  if(i==1){print (noise_array)
    return (sequence_markov)
    }
  recr_fun(i,seq,sequence_markov)
}

for(k in 1:100){
  sequence_markov_1 = recr_fun(100,3)
  print(sequence_markov_1)
}
