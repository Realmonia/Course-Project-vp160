clear all
clc
i=1;
v1(1)=1;
x1(1)=0.5;
E1(1)=25/32;
E2(1)=25/32;
t1=0:0.1:10;

x=5/6*cos(1.5*t1-atan(4/3));
v=-5/4*sin(1.5*t1-atan(4/3));
E=9./8.*x.^2+0.5.*v.^2;
hold on
plot(t1,E,'b');

while i<101
   x1(i+1)=x1(i)+v1(i)*0.1;
   v1(i+1)=v1(i)-2.25*x1(i)*0.1;
   E1(i+1)=9/8*x1(i+1)*x1(i+1)+1/2*v1(i+1)*v1(i+1);
   i=i+1;
end
plot(t1,E1,'r');

i=1;
v2(1)=1;
x2(1)=0.5;
t2=0:0.1:10;
while i<101
   x2(i+1)=x2(i)+v2(i)*0.1-9/8*x2(i)*0.01;
   v2(i+1)=v2(i)-9/4*x2(i)*0.1-9/8*v2(i)*0.01;
   E2(i+1)=9/8*x2(i+1)*x2(i+1)+1/2*v2(i+1)*v2(i+1);
   i=i+1;
end
plot(t2,E2,'g')

axis([0 10 0.6 1]);
xlabel('t (s)');
ylabel('E (J)');
txt1 = text(0.1,0.66,'red-Numerical Euler','fontsize',10);
txt2 = text(0.1,0.69,'blue-Analytical','fontsize',10);
txt3 = text(0.1,0.63,'green-Numerical Runge-Kutta','fontsize',10);