clear all;
clc;
a(1)=pi/2;
a(2)=pi/3;
a(3)=pi/4;
a(4)=pi/5;
a(5)=pi/6;
b=0.001;
dt=0.1;
g=9.8;
x1(1)=0;
y1(1)=0;
x2(1)=0;
y2(1)=0;
x3(1)=0;
y3(1)=0;
x4(1)=0;
y4(1)=0;
x5(1)=0;
y5(1)=0;
hold on;
axis([-25,555,0,313]);
vx(1)=90*cos(a(1));
vy(1)=90*sin(a(1));
for i=1:1:100000
    v(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b*v(i)*vy(i))*dt;
    x1(i+1)=x1(i)+vx(i)*dt;
    y1(i+1)=y1(i)+vy(i)*dt;
    if y1(i)<0;
        break;
    end
end
plot(x1,y1);
vx(1)=90*cos(a(2));
vy(1)=90*sin(a(2));
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
vx(1)=90*cos(a(3));
vy(1)=90*sin(a(3));
for i=1:1:100000
    v(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b*v(i)*vy(i))*dt;
    x3(i+1)=x3(i)+vx(i)*dt;
    y3(i+1)=y3(i)+vy(i)*dt;
    if y3(i)<0;
        break;
    end
end
plot(x3,y3);
vx(1)=90*cos(a(4));
vy(1)=90*sin(a(4));
for i=1:1:100000
    v(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b*v(i)*vy(i))*dt;
    x4(i+1)=x4(i)+vx(i)*dt;
    y4(i+1)=y4(i)+vy(i)*dt;
    if y4(i)<0;
        break;
    end
end
plot(x4,y4);
vx(1)=90*cos(a(5));
vy(1)=90*sin(a(5));
for i=1:1:100000
    v(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b*v(i)*vy(i))*dt;
    x5(i+1)=x5(i)+vx(i)*dt;
    y5(i+1)=y5(i)+vy(i)*dt;
    if y5(i)<0;
        break;
    end
end
plot(x5,y5);
txt1 = text(10,200,'a=��/2','fontsize',15);
txt2 = text(225,225,'a=��/3','fontsize',15);
txt3 = text(225,150,'a=��/4','fontsize',15);
txt3 = text(225,100,'a=��/5','fontsize',15);
txt3 = text(225,70,'a=��/6','fontsize',15);
xlabel('x (m)');
ylabel('y (m)');