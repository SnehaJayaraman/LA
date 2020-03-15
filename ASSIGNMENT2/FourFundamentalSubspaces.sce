//FOUR FUNDAMENTAL SUBSPACES
//Coefficient matrix A
disp('Enter the matrix A');
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
a=A;
disp(A,"A");

//Dimensions of A
[m,n]=size(A); 
disp(m,'m=');
disp(n,'n=');

//rref computes the row Echelon form of matrix A by LU transformations
[v,pivot]=rref(A); 
disp(rref(A));
disp(v);
r=length(pivot);
disp(r,'rank=');

ColumnSpace=A(:,pivot);
disp(ColumnSpace,'Column Space=');

//kernal computes the null space of the given matrix
NullSpace=kernel(A); 
disp(NullSpace,'Null Space=');

RowSpace=A(1:r,:)';
disp(RowSpace,'Row Space=');

LeftNullSpace=kernel(A');
disp(LeftNullSpace,'Left Null Space=');
