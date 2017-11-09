# Bayes Theoram

# s = 0
# for(i in 1:10000)
# {
#   x <-sample(seq(1:431), 10, replace = T) #samples 10 from 431 with replacement
#   y <- unique (x) #unique numbers in x
#   diff <- 10 - length(y) # number of repeats in x
#   if (diff) s = s else s = s+1 #if diff = 0 (no repeats) s = s+1, if diff is not equal
# }

# prob <- function(i){
#   if(runif(1) <=0.15){
#     pos[i] = 1
#     if(runif(1)<=0.95){
#       virus[i] = 1
#     }
#     else{
#       virus[i] = 0
#     }
#   }
#   else{
#     pos[i] = 0
#     if(runif(1)<=0.02){
#       virus[i] = 1
#     }
#     else{
#       virus[i] = 0
#     }
#   }
# }

j = 1
pos = 0
virus = 0

clinic <- function(){
  for(i in 1:100000){
    if(runif(1) <=0.15){
      if(runif(1)<=0.95){
        pos[i] = 1
        virus[j] = 1
        j = j+1
      }
      else{
        pos[i] = 0
      }
    }
    else{
      if(runif(1)<=0.02){
        virus[j] = 0
        pos[i] = 1
        j = j+1
      }
      else{
        pos[i] = 0
      }
    }
  }
}


clinic()