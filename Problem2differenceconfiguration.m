clear all
clc
i=1;
v1(1)=1;
x1(1)=0.5;
t1=0:0.1:10;
x=5/6*cos(1.5*t1-atan(4/3));
while i<101
   x1(i+1)=x1(i)+v1(i)*0.1;
   v1(i+1)=v1(i)-2.25*x1(i)*0.1;
   i=i+1;
end
dx=x-x1;

i=1;
v2(1)=1;
x2(1)=0.5;
t2=0:0.01:10;
xx=5/6*cos(1.5*t2-atan(4/3));
while i<1001
   x2(i+1)=x2(i)+v2(i)*0.01;
   v2(i+1)=v2(i)-2.25*x2(i)*0.01;
   i=i+1;
end
dxx=xx-x2;

i=1;
v3(1)=1;
x3(1)=0.5;
t3=0:0.001:10;
xxx=5/6*cos(1.5*t3-atan(4/3));
while i<10001
   x3(i+1)=x3(i)+v3(i)*0.001;
   v3(i+1)=v3(i)-2.25*x3(i)*0.001;
   i=i+1;
end
dxxx=xxx-x3;

hold on
xlabel('t (s)');
ylabel('difference (m)');
plot(t1,dx,'r');
plot(t2,dxx,'b');
plot(t3,dxxx,'g');
txt1 = text(0.1,-1.4,'red-dt=0.1','fontsize',10);
txt2 = text(0.1,-1.25,'blue-dt=0.01','fontsize',10);
txt1 = text(0.1,-1.1,'green-dt=0.001','fontsize',10);