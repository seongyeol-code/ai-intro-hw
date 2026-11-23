# 7주차 성능평가

혼동행렬의 네 값(TP, FP, FN, TN)을 입력하면 분류 모델의 성능 지표를 계산해 출력하는 MATLAB 프로그램입니다.

| 파일 | 내용 |
|---|---|
| `hw7_est.m` | `input`으로 TP·FP·FN·TN을 입력받아 혼동행렬과 성능 지표를 출력하고, FP·FN의 의미를 함께 출력 |

## 계산하는 지표

| 지표 | 식 |
|---|---|
| 정확도 (Accuracy) | (TP + TN) / N |
| 민감도 (Sensitivity, Recall) | TP / (TP + FN) |
| 특이도 (Specificity) | TN / (TN + FP) |
| 정밀도 (Precision, PPV) | TP / (TP + FP) |
| 음성예측도 (NPV) | TN / (TN + FN) |
| F1-score | 2 × Precision × Recall / (Precision + Recall) |
| 오분류율 (Error Rate) | (FP + FN) / N |

- FP(거짓양성): 실제 음성을 양성으로 판단 → 불필요한 검사 등 **비용** 발생
- FN(거짓음성): 실제 양성을 음성으로 판단 → 이상을 놓치는 **위험** 발생

## 실행 방법

MATLAB에서 `hw7_est`를 실행한 뒤 TP, FP, FN, TN 값을 차례로 입력합니다.
예) 450, 50, 50, 450을 입력하면 정확도·민감도·특이도·정밀도·NPV·F1-score가 모두 90.00%, 오분류율이 10.00%로 나옵니다.
