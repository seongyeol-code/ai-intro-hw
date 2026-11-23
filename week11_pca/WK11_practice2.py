import numpy as np
np.set_printoptions(precision=4, floatmode="fixed", suppress=True)

data=np.array([[1,2],[2,6],[3,9],[5,12]],dtype=float)

n=data.shape[0]
mean=data.mean(axis=0)

X=data-mean

C=(X.T@X)/(n-1)

C_numpy=np.cov(data,rowvar=False,ddof=1)

print("각 열의 평균:", mean)

print("\n표본 공분산 행렬:")
print(C)

print(f"\n분산 (x1) = {C[0,0]:.4f}")
print(f"\n분산 (x2) = {C[1,1]:.4f}")
print(f"\n공분산 (x1,x2) = {C[0,1]:.4f}")

print("\nNumPy 결과와 일치:",np.allclose(C,C_numpy))
