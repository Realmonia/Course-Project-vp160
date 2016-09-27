clear all
clc
t=0:0.1:10;
x=5/6*cos(1.5*t-atan(4/3));
hold on
plot(t,x,'b');
i=1;
v1(1)=1;
x1(1)=0.5;
t1=0:0.1:10;
while i<101
   x1(i+1)=x1(i)+v1(i)*0.1;
   v1(i+1)=v1(i)-2.25*x1(i)*0.1;
   i=i+1;
end
plot(t1,x1,'r');
xlabel('t (s)');
ylabel('x (m)');
txt1 = text(0.1,-1.75,'red-Numerical','fontsize',10);
txt2 = text(0.1,-1.25,'blue-Analytical','fontsize',10);