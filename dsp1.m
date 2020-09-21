clc;clear all;
%% ��������

m1=1:1:5;x1=2*m1;
m2=-5:1:5;x2=2*m2;

[y2,n2]=sigadd(x1,m1,x2,m2);
figure;
stem(n2,y2);title('�������');

[y3,n3]=sigmult(x1,m1,x2,m2);
figure;
stem(n3,y3);title('�������');

[y4,n4]=sigshift(y3,n3,5);
figure;
stem(n4,y4);title('������λ');

[y5,n5]=sigfold(y3,n3);
figure;
stem(n5,y5);title('���з�ת');

[y8,n8]=conv_m(x1,m1,x2,m2);
figure;
stem(n8,y8,'.');title('���о��');

%% ��������

[y6,n6]=stepseq(0,-5,5);
figure;
stem(n6,y6);
title('��Ծ����');

[y7,n7]=impseq(0,-3,10);
figure;
stem(n7,y7);
title('�弤����');












