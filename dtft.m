function [X]=dtft(x,n,w,M)
if length(x)~=length(n)
    error('���г��Ȳ�ƥ��');
end
if length(x)==length(n)  
    X=x*(exp(-j*pi/M)).^(n'*w);
end

