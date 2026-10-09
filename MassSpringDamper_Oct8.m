function xprime = MassSpringDamper_Oct8(t,x)

%all parameters stored

M=8;
K=100;
D=50;
F=50;


xprime=[F-(D/M)*x(1)-K*x(2);(1/M)*x(1)];


end
