% rоординати для трикутників
left_ear = [2 14; 2 20; 5 17];
right_ear = [5 17; 8 14; 8 20];
head = [5 11; 2 14; 5 17; 8 14];
left_arm = [3 9; 6 7; 6 12];
torso1 = [6 3; 6 12; 10 8];
torso2 = [4 1; 10 1; 10 8];
tail = [14 1; 18 4; 14 4; 10 1];
% малюю малюнок
figure;
hold on;
fill(left_ear(:,1), left_ear(:,2), 'r');
fill(right_ear(:,1), right_ear(:,2), 'r');
fill(head(:,1), head(:,2), 'r');
fill(left_arm(:,1), left_arm(:,2), 'r');
fill(torso1(:,1), torso1(:,2), 'r');
fill(torso2(:,1), torso2(:,2), 'r');

fill(tail(:,1), tail(:,2), 'r');

% встановлюю обмеження вісей
axis([0 18 0 22]);
axis off;
title('Red Fox Tangram');

