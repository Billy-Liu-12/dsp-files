function [y] = ovrlpsav(x,h,N)
% �û����ӷ��������
% ----------------------------------------
% [y] = ovrlpsav(x,h,N)
% y = �������
% x = ��������
% h = ������Ӧ
% N = �鳤
%
Lenx = length(x); M = length(h);
M1 = M-1; L = N-M1;
h = [h zeros(1,N-M)];
%
x = [zeros(1,M1), x, zeros(1,N-1)]; % Ԥ�� (M-1) ����
K = floor((Lenx+M1-1)/(L));         %����
Y = zeros(K+1,N);
% ������������
for k=0:K
	xk = x(k*L+1:k*L+N);
	Y(k+1,:) = circonvt(xk,h,N);
end
Y = Y(:,M:N)';                      % ȥ��ǰ(M-1) ������
y = (Y(:))';                        % װ�����