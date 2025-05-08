import random

values = [-10, 2, 3, 4, 5,       6, 7, 8, 9, 20]
probs = [0.05]*5 + [0.15]*5

samples = []

for _ in range(1000):
    r = random.random() 
    summ = 0            
    for val, p in zip(values, probs): 
        summ += p  
        if r < summ:
            samples.append(val) 
            break                 

sample_mean = sum(samples) / len(samples)
theoretical_mean = sum(v * p for v, p in zip(values, probs))        #E[X]=∑x_i​⋅P(x_i) 

print(f"Выборочное M[X]: {sample_mean:.2f}")
print(f"Теоретическое M[X]: {theoretical_mean:.2f}")
print(f"Разница: {abs(sample_mean - theoretical_mean):.2f}")