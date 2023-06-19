%Program by Tran Van The HCMUTE 
% 5/11/2023
%Thong so con lac nguoc
 
M = 1;
m = 0.1;
g = 9.81;
l = 1;
A=[0 1 0 0;
   (M+m)*g/(M*l) 0 0 0;
   0 0 0 1;
   -m*g/M 0 0 0]
B=[0;-1/M;0;1/M]
Q=[1 0 0 0;0 1 0 0;0 0 100 0;0 0 0 1];
R=1;
C=[1 0 0 0;0 0 1 0];
Qn=diag([0.000001 0.000001 0.000001 0.000001]);
G=diag([1 1 1 1]);
Rn=[0.001 0;0 0.01];
K=lqr(A,B,Q,R)
P=care(A,B,Q,R);
L=lqe(A,G,C,Qn, Rn) %G là ma tr?n ??n v?
%nhieu teta [0.00001]
% nhieu x [0.01]

