//SOLUTIONS FOR A SYSTEM OF LINEAR EQUATIONS IN THE MATRIX FORM (3X3) USING GAUSSIAN ELIMINATION

disp('Enter the coefficient matrix');

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

disp('Enter the matrix of Constants');

b1=input("Enter b1: ");
b2=input("Enter b2: ");
b3=input("Enter b3: ");

b=[b1;b2;b3];
Aug=[A b];


disp('The Augmented Matrix is ');
disp(Aug);
n=3; //Considering a 3x3 matrix


//Forward Elimination
for j=1:n-1
    for i=j+1:n
        Aug(i,j:n+1)=Aug(i,j:n+1)-Aug(i,j)/Aug(j,j)*Aug(j,j:n+1);
    end
end
//Backward Substitution
x=zeros(n,1);
x(n)=Aug(n,n+1)/Aug(n,n);
for i=n-1:-1:1
    x(i)=(Aug(i,n+1)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
end
disp(Aug(1,1),Aug(2,2),Aug(3,3), 'The pivots are ')
disp(x(3),x(2),x(1),'The values of x,y,z are')
