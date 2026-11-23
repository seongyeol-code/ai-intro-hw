import numpy as np

np.set_printoptions(precision=4, floatmode="fixed", suppress=True)

data=np.array([[1.4,0.2],[1.4,0.2],[1.3,0.2],[1.5,0.2],[1.4,0.2],[1.7,0.4],
               [1.4,0.3],[1.5,0.2],[1.4,0.2],[1.5,0.1],],dtype=float)

n=data.shape[0]
mean=data.mean(axis=0)

X=data-mean

C=(X.T@X)/n

C_numpy=np.cov(data, rowvar=False, ddof=0)

print("각 열의 평균:")
print(mean)

print("\n평균을 뺀 데이터 X:")
print(X)

print("\n공분산 행렬 C:")
print(C)

print(f"\n분산 (x1) = {C[0,0]:.4f}")
print(f"\n분산 (x2) = {C[1,1]:.4f}")
print(f"\n공분산 (x1,x2) = {C[0,1]:.4f}")

print("\nNumPy 결과와 일치:",np.allclose(C,C_numpy))

