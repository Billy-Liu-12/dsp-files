function [b,a] = cas2dir(b0,B,A);
% �����͵�ֱ���͵���ʽת��
% ---------------------------------
% [b,a] = cas2dir(b0,B,A)
%  b = ֱ���͵ķ��Ӷ���ʽϵ��
%  a = ֱ���͵ķ�ĸ����ʽϵ��
% b0 = ����ϵ��
%  B = ������bk��K��3άʵϵ������
%  A = ������ak��K��3άʵϵ������
%
[K,L] = size(B);
b = [1];
a = [1];
for i=1:1:K
	b=conv(b,B(i,:));
	a=conv(a,A(i,:));
end
b = b*b0;