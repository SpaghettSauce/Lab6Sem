import numpy as np

A = np.array([[122, 113, 61, 55],
              [113, 191, 91, 84],
              [61, 91, 57, 48],
              [55, 84, 48, 51]])

eigenvalues = np.linalg.eigvals(A)
print(eigenvalues)