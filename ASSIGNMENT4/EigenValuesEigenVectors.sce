A=[]
disp("Enter a 3x3 matrix :");
for i=1:3
    for j=1:3
        printf("Enter value for A(%d,%d):",i,j)
        A(i,j)=input("")
    end
end
lam=poly(0,'lamda')
lam=lam
charMat=A-lam*eye(3,3)
disp(charMat,'The Characteristic Matrix is:')
charPoly=poly(A,'lamda')
disp(charPoly,'The Characteristic Polynomial is:')
lam=spec(A)
disp(lam,'The Eigen values of A are')
function[x,lam]=eigenvectors(A)
[n,m]=size(A);
lam=spec(A)';
x=[];
for k=1:3
    B=A-lam(k)*eye(3,3);
    C=B(1:n-1,1:n-1);
    b=-B(1:n-1,n);
    y=C\b;
    y=[y;1];
    y=y/norm(y);
    x=[x y];
end
endfunction
//get f('eigenvectors')
[x,lam]=eigenvectors(A)
disp(x,'The Eigen vectors of A are');


