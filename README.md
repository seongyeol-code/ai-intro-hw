# ai-intro-hw

상명대학교 휴먼AI공학전공 **인공지능개론(2026-2학기)** 수업에서 실습하고 과제로 작성한 코드를 모아 둔 저장소입니다.
강의에서 배운 기계학습 알고리즘을 MATLAB과 Python으로 직접 구현해 보고, 내장 함수 결과와 비교하면서 연습했습니다.

## 폴더 구성

| 폴더 | 주제 | 언어 | 해 본 것 |
|---|---|---|---|
| [`week3_knn`](week3_knn) | k-최근접 이웃 (KNN) | MATLAB | Iris 데이터 시각화, `fitcknn`으로 분류, 거리 계산과 다수결로 KNN 직접 구현, 결정 영역 그리기 |
| [`week7_evaluation`](week7_evaluation) | 성능평가 | MATLAB | 혼동행렬(TP·FP·FN·TN)을 입력받아 정확도·민감도·특이도·정밀도·F1-score 등 계산 |
| [`week9_regression`](week9_regression) | 상관·회귀분석 | MATLAB | Auto MPG 데이터에서 마력 45 이하만 골라 단계적 선택(`stepwiselm`)으로 연비 회귀모델 만들기 |
| [`week11_pca`](week11_pca) | 차원축소 (PCA) 기초 | Python | 평균을 뺀 데이터로 공분산 행렬 계산, `np.cov`로 검산 |
| [`week12_perceptron`](week12_perceptron) | 퍼셉트론 | Python | 붓꽃 50개(setosa·versicolor)로 퍼셉트론을 직접 구현해 학습, 사용하는 특징 수에 따라 결과 비교 |

각 폴더의 README에 파일별 설명과 실행 방법을 적어 두었습니다.

## 실행 환경

- MATLAB (Statistics and Machine Learning Toolbox)
- Python 3 (NumPy: `week11_pca`)

> 루트의 `hw7_est.m`은 과제 제출 링크를 유지하기 위해 남겨 둔 파일이며, `week7_evaluation/hw7_est.m`과 같은 코드입니다.
