function cc=CrossCorrelation(cor,cyt)

n=length(cor);
lag=0:(n-1);
cc=zeros(n,1);
x=cyt;
y=cor;

for t=lag
    mxc1=sum(x(1:n-t))/(n-t);
    mxc2=sum(x((1+t):n))/(n-t);
    
    myc1=sum(y(1:n-t))/(n-t);
    myc2=sum(y((1+t):n))/(n-t);
    
    cc(t+1)= ( sum((x(1:n-t)-mxc1).*(y((1+t):n)-myc2)) + sum((y(1:n-t)-myc1).*(x((1+t):n)-mxc2)) ) /2/(n-t);
end
% cc=cc/cc(1);