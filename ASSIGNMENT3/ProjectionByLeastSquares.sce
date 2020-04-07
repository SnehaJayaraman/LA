A=[]
b=[]
disp("Enter equations of the form C+Dt=b");
n=input("Enter the number of equations :");
for i=1:n
    printf("Enter value for A(%d,1) :" ,i);
    A(i,1)=input("");
    printf("Enter value for A(%d,2) :" ,i);
    A(i,2)=input("");
end
for i=1:n
    printf("Enter term b(%d,1) :",i);
    b(i,1)=input("");
end
disp(a,"The co-efficient matrix  A:");
disp(b,"The constant matrix b:");
disp("To find Best Fit Line solve: A (transpose)Ax=A(transpose)b");
disp("Solving for C and D");
x=(A'*A)\(A'*b);
disp(x,'x=');
disp('The best fit line obtained using least square method is :');
printf("b=(%f)+(%f)*t\n",x(1,1),x(2,1));
disp("The projection of b onto column space of A:");
p=A*x;
disp(p);
e=b-p;
disp(e,"Minimised Error Vector");
squared=0
for i=1:n
    squared=squared + (e(i,1)^2);
end
printf("The squared error is %f", squared);
