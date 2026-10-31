# KNN MATLAB 실습

Fisher Iris 데이터(`fisheriris`)를 이용한 k-최근접 이웃(KNN) 분류 실습입니다.

| 파일 | 내용 |
|---|---|
| `ex1_dataload_visualization.m` | 데이터 불러오기, 종별 산점도 시각화, 학습/평가 데이터 분리 (직접 구현) |
| `ex2_knn_using_matlab.m` | MATLAB 내장 함수 `fitcknn` / `predict`로 KNN 분류 (직접 구현) |
| `ex3_knn_my_style.m` | 유클리드 거리 + 다수결로 KNN 직접 구현, `fitcknn` 결과와 비교 (2종, 특징 2개) |
| `ex4_knn_generalization.m` | 특징 4개, 3종 분류로 일반화 (k = 5) |
| `ex5_knn_space.m` | 격자(meshgrid) 점을 분류해 KNN 결정 영역 시각화 (k = 50) |
| `run_all.m` | ex1 ~ ex5 한 번에 실행 |

## 실행 방법
MATLAB에서 이 폴더로 이동한 뒤 `run_all`을 실행합니다.
(Statistics and Machine Learning Toolbox 필요: `fisheriris`, `fitcknn`)
