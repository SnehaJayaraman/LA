
//GAUSS JORDEN METHOD TO FIND INVERSE OF 3X3 MATRIX

disp('Enter the coefficient.matrix');
a11=input("Enter a11: ");
a12=input("Enter a12: ");
a13=input("Enter a13: ");
a21=input("Enter a21: ");
a22=input("Enter a22: ");
a23=input("Enter a23: ");
a31=input("Enter a31: ");
a32=input("Enter a32: ");
a33=input("Enter a33: ");

A=[a11,a12,a13;a21,a22,a23;a31,a32,a33];

n=length(A(1,:));
Aug = [A, eye(n,n)];

disp('The Augmented matrix [A I] is:' );
disp(Aug);

//Forward Elimination
for j=1:n-1
    for i=j+1:n
        Aug(i,j: 2*n) = Aug(i,j:2*n)-Aug(i,j)/Aug(j,j)*Aug(j,j:2*n);
    end
end

//Backward Elimination
for j=n:-1:2
    Aug(1:j-1,:)=Aug(1:j-1,:)-Aug(1:j-1,j)/Aug(j,j)*Aug(j,:);
end

//Diagonal Normalization
for j=1:n
    if(Aug(j,j)~=0)then
        Aug(j,:)=Aug(j,:)/Aug(j,j);
    else
        printf("\n The given matrix is Singular.Therfore there exists no inverse")
        return
    end
end

Inv = Aug(:,n+1:2*n);
disp(Inv, 'The inverse of A is: ');
