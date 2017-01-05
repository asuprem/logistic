function [labels]= logit(beta, data)
    % Environment variables
    temp = sum(bsxfun(@times,data,beta),2);
    labels = exp(temp)./(1+exp(temp));
    labels(labels>0.5)=1;
    labels(labels<0.5)=0;
    labels(labels==0.5)=randi(2,sum(labels==0.5),1)-1;
end