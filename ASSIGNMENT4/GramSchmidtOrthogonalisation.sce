A=[]
disp("Enter 3 linearly independent vectors (a,b,c):");
for i=1:3
    printf("Enter vector %d:\n",i);
    for j=1:3
       A(j,i)=input("");
    end
end
a=A(:,1)
b=A(:,2)
c=A(:,3)
disp(a,"a= ",b,"b= ",c,"c= ");
disp("Orthogonalising the given vectors using Gram Schimdt Orthogonalisation :")
q1=a/norm(a)
B=b-(q1'*b)*q1
q2=B/norm(B)
C=c-((q1'*c)*q1)-((q2'*c)*q2)
q3=C/norm(C)
disp("The three orthonormal vectors q1,q2,q3 are:")
disp(q1,"q1=")
disp(q2,"q2=")
disp(q3,"q3=")


