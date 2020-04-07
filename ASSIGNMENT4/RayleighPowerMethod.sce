A=[]
disp("Enter a 3x3 matrix :")
for i=1:3
    for j=1:3
        printf("Enter element A(%d,%d):",i,j)
        A(i,j)=input("")
    end
end
disp(A,"The given matrix is:")
x0=[]
disp("Enter the initial approximate Eigen Vector:")
for i=1:3
    u0(i,1)=input("")
end
disp(u0,"Initial Approximate Eigen Vector :")
v=A*u0;
a=max(u0);
disp(a,"First approximation to Eigen value is")
while abs(max(v)-a)>0.002
    disp(v,"Current Eigen Vector is :")
    a=max(v);
    disp(a,"Current Eigen Value is")
    u0=v/max(v);
    v=A*u0;
end
format('v',4);
disp(max(v),'The Largest Eigen Value is :')
format('v',5)
disp(u0,'The corresponding Eigen Vector is :')

