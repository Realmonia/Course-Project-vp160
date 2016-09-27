clear all
clc
i=1;
v1(1)=1;
x1(1)=0.5;
E1(1)=25/32;
t1=0:0.001:10;

x=5/6*cos(1.5*t1-atan(4/3));
v=-5/4*sin(1.5*t1-atan(4/3));
E=9./8.*x.^2+0.5.*v.^2;
hold on
plot(t1,E,'b');

while i<10001
   x1(i+1)=x1(i)+v1(i)*0.001;
   v1(i+1)=v1(i)-2.25*x1(i)*0.001;
   E1(i+1)=9/8*x1(i+1)*x1(i+1)+1/2*v1(i+1)*v1(i+1);
   i=i+1;
end
plot(t1,E1,'r');
axis([0 10 0.5 1]);
xlabel('t (s)');
ylabel('E (J)');
txt1 = text(0.1,0.53,'red-Numerical','fontsize',10);
txt2 = text(0.1,0.57,'blue-Analytical','fontsize',10);