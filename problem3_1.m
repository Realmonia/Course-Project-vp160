clear all;
clc;
a(1)=pi/2;
a(2)=pi/3;
a(3)=pi/4;
a(4)=pi/5;
a(5)=pi/6;
k=0.1;
dt=0.01;
g=9.8;
hold on;
axis([-25,450,0,275]);
for j=1:1:5
    vx(1)=90*cos(a(j));
    vy(1)=90*sin(a(j));
    x1(1)=0;
    y1(1)=0;
    for i=1:1:11000
        vx(i+1)=vx(i)-k*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k*vy(i))*dt;
        x1(i+1)=x1(i)+vx(i)*dt;
        y1(i+1)=y1(i)+vy(i)*dt;
    end
plot(x1,y1);    
end
txt1 = text(10,250,'a=¦Ð/2','fontsize',12);
txt2 = text(200,210,'a=¦Ð/3','fontsize',12);
txt3 = text(320,130,'a=¦Ð/4','fontsize',12);
txt4 = text(405,45,'a=¦Ð/5','fontsize',12);
txt5 = text(240,80,'a=¦Ð/6','fontsize',12);
xlabel('x (m)');
ylabel('y (m)');