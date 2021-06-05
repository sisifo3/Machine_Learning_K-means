function[] = RunGapStatic()
C = 15;
VectorGap = zeros(length(C));
for i = 1 :C
    [Gap,sk] = GapStaticsSecond(i);
    VectorGap(i) = Gap;
    VectorSk(i) = sk;
end
%disp(Gap)
%disp(sk)
plot(VectorGap)


end