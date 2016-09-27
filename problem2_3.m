clear all;
clc;
a=pi/4;
k=0.1;
dt=0.01;
g=9.8;
vx(1)=90*cos(a);
vy(1)=90*sin(a);
x1(1)=0;
y1(1)=0;
x2(1)=0;
y2(1)=0;
hold on;
axis([0,450,0,180]);
for i=1:1:11000
    x2(i+1)=-1/k*vx(1)*exp(-k*0.01*i)+vx(1)/k;
    y2(i+1)=-1/k*(1/k*g*(exp(-k*0.01*i)-1)+vy(1)*(exp(-k*0.01*i)-1)+g*(0.01*i));
end
plot(x2,y2);
for i=1:1:11000
    vx(i+1)=vx(i)-k*vx(i)*dt;
    vy(i+1)=vy(i)-(g+k*vy(i))*dt;
    x1(i+1)=x1(i)+vx(i)*dt;
    y1(i+1)=y1(i)+vy(i)*dt;
end
plot(x1,y1);
txt1 = text(150,145,'Numerical','fontsize',12);
txt2 = text(150,110,'Analytical','fontsize',12);
xlabel('x (m)');
ylabel('y (m)');