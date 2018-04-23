% add description of the function

function out=autocorrelationHH(data)

n=length(data);
x=data;

lag=0:(n-1);
ac_b=zeros(n,1);
for t=lag
    mb1=sum(x(1:n-t))/(n-t);
    mb2=sum(x((1+t):n))/(n-t);
%     ac_b(t+1)=sum((x(1:n-t)-mb1).*(x((1+t):n)-mb2))/(n-t);
    ac_b(t+1)=sum((x(1:n-t)-mb1).*(x((1+t):n)-mb2));

    x = 38+22;
end
out=ac_b;

%% remove some more lines ?
