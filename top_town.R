#towtown sol

# 2(a)
wealth = c(80,110,110,70,120,90,110)
pop = c(15,20,20,10,10,10,15)
prob_pop = pop/100

mean_wealth = sum(wealth*prob_pop)
var_wealth = sum(((wealth-mean_wealth)^2)*prob_pop)

#2(b)
top_town = wealth[4:7]
top_town_pop = pop[4:7]
top_town_pop_prob = top_town_pop/45
top_town_mean = sum(top_town*top_town_pop_prob)
top_town_var = sum(((top_town-top_town_mean)^2)*top_town_pop_prob)

#2(c)
# a => living in area mean > 100
# b = living in top town
# p(a)/p(b) = p(a A b)/ p(b)
prob_living_greater_100 = (120*10+110*15)/(45*top_town_mean)

#2(d)
(120*10+110*15)/(120*10+110*15+2*110*20)
