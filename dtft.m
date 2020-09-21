function [X]=dtft(x,n,w,M)
if length(x)~=length(n)
    error('序列长度不匹配');
end
if length(x)==length(n)  
    X=x*(exp(-j*pi/M)).^(n'*w);
end

