function [Hr,w,d,L] = Hr_Type4(h);
% ��������ֵ�ͨ�˲�����Ƶ������ӦHr(w) 
% ---------------------------------------------------
% [Hr,w,d,L] = Hr_Type4(h)
%  Hr = �����Ӧ
%  w = ��[0 pi] �����ڼ���Hr ��500��Ƶ�ʵ�
%  d = �����ֵ�ͨ�˲�����ϵ��
%  L = Hr�Ľ״�
%  h = �����ֵ�ͨ�˲�����Ƶ����Ӧ
% 
 M = length(h);
 L = M/2;
 d = 2*[h(L:-1:1)];
 n = [1:1:L]; n = n-0.5;
 w = [0:1:500]'*pi/500;
Hr = sin(w*n)*d';
