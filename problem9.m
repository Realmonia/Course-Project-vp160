clear all;
clc;
a=pi/6;
k=0.1;
b=0.1^2/9.8;
dt=0.01;
g=9.8;
vx(1)=90*cos(a);
vy(1)=90*sin(a);
x1(1)=0;
y1(1)=0;
x2(1)=0;
y2(1)=0;
x3(1)=0;
y3(1)=0;
hold on;
axis([0,730,0,130])
for i=1:1:100000
    vx(i+1)=vx(i)-k*vx(i)*dt;
    vy(i+1)=vy(i)-(g+k*vy(i))*dt;
    x1(i+1)=x1(i)+vx(i)*dt;
    y1(i+1)=y1(i)+vy(i)*dt;
    if y1(i)<0;
        break;
    end
end
plot(x1,y1);
for i=1:1:100000
    v(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b*v(i)*vy(i))*dt;
    x2(i+1)=x2(i)+vx(i)*dt;
    y2(i+1)=y2(i)+vy(i)*dt;
    if y2(i)<0;
        break;
    end
end
plot(x2,y2);
for i=1:1:100000
    vx(i+1)=vx(i);
    vy(i+1)=vy(i)-g*dt;
    x3(i+1)=x3(i)+vx(i)*dt;
    y3(i+1)=y3(i)+vy(i)*dt;
    if y3(i)<0;
        break;
    end
end
plot(x3,y3);
txt1 = text(300,60,'linear drag','fontsize',15);
txt2 = text(380,40,'quadratic drag','fontsize',15);
txt3 = text(590,50,'no drag','fontsize',15);
xlabel('x (m)');
ylabel('y (m)');