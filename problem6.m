clear all;
clc;
a=pi/4;
b=0.001;
dt(1)=1;
dt(2)=0.5;
dt(3)=0.1;
g=9.8;
vx=90*cos(a);
vy=90*sin(a);
x1(1)=0;
y1(1)=0;
x2(1)=0;
y2(1)=0;
x3(1)=0;
y3(1)=0;
hold on;
axis([0,575,0,200]);
for i=1:1:100000
    v(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v(i)*vx(i)*dt(1);
    vy(i+1)=vy(i)-(g+b*v(i)*vy(i))*dt(1);
    x1(i+1)=x1(i)+vx(i)*dt(1);
    y1(i+1)=y1(i)+vy(i)*dt(1);
    if y1(i)<0;
        break;
    end
end
plot(x1,y1);
for i=1:1:100000
    v(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v(i)*vx(i)*dt(2);
    vy(i+1)=vy(i)-(g+b*v(i)*vy(i))*dt(2);
    x2(i+1)=x2(i)+vx(i)*dt(2);
    y2(i+1)=y2(i)+vy(i)*dt(2);
    if y2(i)<0;
        break;
    end
end
plot(x2,y2);
for i=1:1:100000
    v(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v(i)*vx(i)*dt(3);
    vy(i+1)=vy(i)-(g+b*v(i)*vy(i))*dt(3);
    x3(i+1)=x3(i)+vx(i)*dt(3);
    y3(i+1)=y3(i)+vy(i)*dt(3);
    if y3(i)<0;
        break;
    end
end
plot(x3,y3);
txt1 = text(250,150,'dt=0.1','fontsize',15);
txt2 = text(250,170,'dt=0.5','fontsize',15);
txt3 = text(250,182,'dt=1','fontsize',15);
xlabel('x (m)');
ylabel('y (m)');