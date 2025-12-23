Ra = 1; La = 0.5; J = 0.01; B = 0.1; Kt = 0.01; Kb = 0.01;
num = Kt;
den = [La*J (La*B + Ra*J) (Ra*B + Kb*Kt)];
G = tf(num, den);
Kp = 50;
Ki = 100;
C = tf([Kp Ki], [1 0]); % PI controller
T = feedback(C*G, 1); % closed-loop
figure; step(T); grid on;
title('Closed-Loop Step Response');
figure; bode(T); grid on;
title('Closed-Loop Bode Plot');