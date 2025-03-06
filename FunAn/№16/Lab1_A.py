import numpy as np
"""
B = np.array([[-3, 9, -2, 7],
              [3, 8, 0, -9],
              [5, 1, 1, 2],
              [4, -4, 5, 0]])
Y = np.array([[84],
               [5],
               [65],
               [35]])
Q = np.array([[-3, 3, 5, 4],
              [9, 8, 1, -4],
              [-2, 0, 1, 5],
              [7, -9, 2, 0]])
A = np.array([[59, -14, 31, -38],
              [-14, 162, -37, -7],
              [31, -37, 30, -12],
              [-38, -7, -12, 134]])

symmetric = np.matmul(Q,B)
##eigenvalues = np.linalg.eigvals(A)
##print(symmetric)
##print(eigenvalues)

C = np.identity(4) - symmetric/(176.28235263)

c_eigvals = np.linalg.eigvals(C)
print(max(c_eigvals))
"""
"""
alpha = 0.9663
eps_2 = 0.0001
p = 5.757160932265139
n_apr_2 = np.emath.logn(alpha, (1-alpha) * eps_2/p)
print(n_apr_2)

"""



D=[1.29337961, 4.09002937, 0.40843567, 3.81773893]

C=[[ 0.66530966, 0.07941805, -0.17585424, 0.21556327],
[0.07941805, 0.08101975, 0.20989055 , 0.03970902],
 [-0.17585424 , 0.20989055 , 0.82981847 , 0.06807261],
 [ 0.21556327, 0.03970902, 0.06807261, 0.23985584]]
x_analitic = [7, 7, 7, 8]
x_cur_iter = [0, 0, 0, 0]
x_past_iter = [0, 0, 0, 0]
alpha = 0.9838420715662617
eps = 10**(-4)
print("Eps: ", eps)
num_iter = 419



def dist(a,b):
    dist_ab = 0
    for i in range(4):
        dist_ab += (a[i] - b[i])**2
    return dist_ab**(0.5)
print("Start dist from (0,0,0,0): ", dist(x_past_iter,D))

print("Num steps(from aprior estimate): ", num_iter)
for i in range(num_iter):
    x_past_iter = x_cur_iter
    x_cur_iter = [0, 0, 0, 0]
    flag = True

    for j in range (4):
        x_cur_iter[j] += D[j]
        for k in range(4):
            x_cur_iter[j] += C[j][k] * x_past_iter[k]

    for j in range(4):
        posteriori = alpha*dist(x_cur_iter,x_past_iter)/(1-alpha)
        if posteriori > eps:
            flag = False
            
    if flag:
        print("posterior estimate: ", i)
        break

print("result")
for i in range(4):
    print(f"x{i+1} = {x_cur_iter[i]}")
    print("dist (result- > analitic): ", dist(x_cur_iter,x_analitic))