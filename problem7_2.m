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
% axis([0,175,0,90]);
vx(1)=90*cos(a(1));
vy(1)=90*sin(a(1));
for i=1:1:100000
    v1(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v1(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b*v1(i)*vy(i))*dt;
    x1(i+1)=x1(i)+vx(i)*dt;
    y1(i+1)=y1(i)+vy(i)*dt;
    if y1(i)<0;
        break;
    end
end
plot(0:0.1:15.8,v1);
vx(1)=90*cos(a(2));
vy(1)=90*sin(a(2));
for i=1:1:100000
    v2(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v2(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b*v2(i)*vy(i))*dt;
    x2(i+1)=x2(i)+vx(i)*dt;
    y2(i+1)=y2(i)+vy(i)*dt;
    if y2(i)<0;
        break;
    end
end
plot(0:0.1:13.8,v2);
vx(1)=90*cos(a(3));
vy(1)=90*sin(a(3));
for i=1:1:100000
    v3(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v3(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b*v3(i)*vy(i))*dt;
    x3(i+1)=x3(i)+vx(i)*dt;
    y3(i+1)=y3(i)+vy(i)*dt;
    if y3(i)<0;
        break;
    end
end
plot(0:0.1:11.4,v3);
vx(1)=90*cos(a(4));
vy(1)=90*sin(a(4));
for i=1:1:100000
    v4(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v4(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b*v4(i)*vy(i))*dt;
    x4(i+1)=x4(i)+vx(i)*dt;
    y4(i+1)=y4(i)+vy(i)*dt;
    if y4(i)<0;
        break;
    end
end
plot(0:0.1:9.7,v4);
vx(1)=90*cos(a(5));
vy(1)=90*sin(a(5));
for i=1:1:100000
    v5(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b*v5(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b*v5(i)*vy(i))*dt;
    x5(i+1)=x5(i)+vx(i)*dt;
    y5(i+1)=y5(i)+vy(i)*dt;
    if y5(i)<0;
        break;
    end
end
plot(0:0.1:8.4,v5);
txt1 = text(6,15,'a=¦Ð/2','fontsize',15);
txt2 = text(6,35,'a=¦Ð/3','fontsize',15);
txt3 = text(6,45,'a=¦Ð/4','fontsize',15);
txt3 = text(6,52,'a=¦Ð/5','fontsize',15);
txt3 = text(6,60,'a=¦Ð/6','fontsize',15);
xlabel('t (s)');
ylabel('v (m/s)');