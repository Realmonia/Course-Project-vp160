clear all;
clc;
a=pi/4;
k(1)=0.02;
k(2)=0.05;
k(3)=0.1;
k(4)=0.2;
k(5)=0.5;
dt=0.01;
g=9.8;
hold on;
axis([-25,750,0,225]);
for j=1:1:5
    vx(1)=90*cos(a);
    vy(1)=90*sin(a);
    x1(1)=0;
    y1(1)=0;
    for i=1:1:11000
        vx(i+1)=vx(i)-k(j)*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k(j)*vy(i))*dt;
        x1(i+1)=x1(i)+vx(i)*dt;
        y1(i+1)=y1(i)+vy(i)*dt;
    end
plot(x1,y1);    
end
txt1 = text(110,50,'k=0.5','fontsize',12);
txt2 = text(250,50,'k=0.2','fontsize',12);
txt3 = text(400,50,'k=0.1','fontsize',12);
txt4 = text(530,50,'k=0.05','fontsize',12);
txt5 = text(660,50,'k=0.02','fontsize',12);
xlabel('x (m)');
ylabel('y (m)');