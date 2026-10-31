% ============================================
% 이진 분류 성능평가 프로그램 
% TP = True Positive
% FP = False Positive
% FN = False Negative
% TN = True Negative
% ============================================
clear; close all; clc;

% 혼동행렬 값 (사용자 입력)
TP = input('TP 값을 입력하세요: ');
FP = input('FP 값을 입력하세요: ');
FN = input('FN 값을 입력하세요: ');
TN = input('TN 값을 입력하세요: ');

% 전체 데이터 수
N = TP + FP + FN + TN;

% 1. 정확도 Accuracy
accuracy = (TP + TN) / N;

% 2. 민감도 Sensitivity / Recall
sensitivity = TP / (TP + FN);

% 3. 특이도 Specificity
specificity = TN / (TN + FP);

% 4. 정밀도 Precision / PPV
precision = TP / (TP + FP);

% 5. 음성예측도 NPV
npv = TN / (TN + FN);

% 6. F1-score
f1_score = 2 * precision * sensitivity / (precision + sensitivity);

% 7. 오분류율 Error Rate
error_rate = (FP + FN) / N;

fprintf('\n========== 혼동행렬 ==========\n');
fprintf('            실제 +     실제 -\n');
fprintf('예측 +       %5d      %5d\n', TP, FP);
fprintf('예측 -       %5d      %5d\n', FN, TN);

fprintf('\n========== 성능 평가 ==========\n');
fprintf('정확도 Accuracy       : %.2f%%\n', accuracy * 100);
fprintf('민감도 Sensitivity    : %.2f%%\n', sensitivity * 100);
fprintf('특이도 Specificity    : %.2f%%\n', specificity * 100);
fprintf('정밀도 Precision      : %.2f%%\n', precision * 100);
fprintf('음성예측도 NPV        : %.2f%%\n', npv * 100);
fprintf('F1-score              : %.2f%%\n', f1_score * 100);
fprintf('오분류율 Error Rate   : %.2f%%\n', error_rate * 100);

fprintf('\n========== 오류 해석 ==========\n');
fprintf('FP(False Positive) = %d\n', FP);
fprintf('→ 실제 음성을 양성으로 잘못 판단\n');
fprintf('→ 불필요한 검사나 처치 등 ''비용'' 발생 가능\n');
fprintf('\n');
fprintf('FN(False Negative) = %d\n', FN);
fprintf('→ 실제 양성을 음성으로 잘못 판단\n');
fprintf('→ 질병이나 이상을 놓치는 ''위험'' 발생 가능\n');