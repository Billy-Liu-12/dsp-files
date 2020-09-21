clc;clear all;
%% 序列运算

m1=1:1:5;x1=2*m1;
m2=-5:1:5;x2=2*m2;

[y2,n2]=sigadd(x1,m1,x2,m2);
figure;
stem(n2,y2);title('序列相加');

[y3,n3]=sigmult(x1,m1,x2,m2);
figure;
stem(n3,y3);title('序列相乘');

[y4,n4]=sigshift(y3,n3,5);
figure;
stem(n4,y4);title('序列移位');

[y5,n5]=sigfold(y3,n3);
figure;
stem(n5,y5);title('序列翻转');

[y8,n8]=conv_m(x1,m1,x2,m2);
figure;
stem(n8,y8,'.');title('序列卷积');

%% 常见序列

[y6,n6]=stepseq(0,-5,5);
figure;
stem(n6,y6);
title('阶跃序列');

[y7,n7]=impseq(0,-3,10);
figure;
stem(n7,y7);
title('冲激序列');












