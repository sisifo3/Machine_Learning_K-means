function[sd_k] = sdk(B,SumLogWkb,VectorWkb)

l = (1/B) * SumLogWkb; 
Sqlog =  (VectorWkb - l).^2;

%Sum for B
SumSqlog = zeros(1,size(Sqlog,2));
for j = 1 : size(Sqlog,2)
    a = Sqlog(:,j);
    aSum = sum(a);
    SumSqlog(1,j) = aSum;
end
   
%SumSqlog  =  sum(Sqlog);
sd_k = ((1/B)* (SumSqlog)).^(1/2);
% disp(sd_k)

end