function[sd_k] = sdkSecond(B,VectorlogWkb)

VectorlogWkbSum = sum(VectorlogWkb);
l = (1/B) * VectorlogWkbSum; 
Sqlog =  (VectorlogWkb - l).^2;

SqlogSum = sum(Sqlog);   
%SumSqlog  =  sum(Sqlog);
sd_k = sqrt((1/B)* (SqlogSum));
% disp(sd_k)

end