clear all
clc
w=0:0.01:2*pi;
x=5/4*cos(w);
y=5/6*sin(w);
hold on
plot(x,y,'b');
i=1;
v1(1)=1;
x1(1)=0.5;
t1=0:0.1:10;
while i<101
   x1(i+1)=x1(i)+v1(i)*0.1;
   v1(i+1)=v1(i)-2.25*x1(i)*0.1;
   i=i+1;
end
plot(v1,x1,'r');
xlabel('v (m/s)');
ylabel('x (m)');
txt1 = text(-3.9,-1.75,'red-Numerical','fontsize',10);
txt2 = text(-3.9,-1.25,'blue-Analytical','fontsize',10);