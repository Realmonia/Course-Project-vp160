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
t1=0:0.01:10;
while i<1001
   x1(i+1)=x1(i)+v1(i)*0.01;
   v1(i+1)=v1(i)-2.25*x1(i)*0.01;
   i=i+1;
end
plot(v1,x1,'r');
xlabel('v (m/s)');
ylabel('x (m)');
txt1 = text(-1.4,-0.9,'red-Numerical','fontsize',10);
txt2 = text(-1.4,-0.7,'blue-Analytical','fontsize',10);