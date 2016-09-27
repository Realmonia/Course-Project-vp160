clear all;
clc;
a=pi/4;
b(1)=0.0002;
b(2)=0.0005;
b(3)=0.001;
b(4)=0.002;
b(5)=0.005;
vx(1)=90*cos(a);
vy(1)=90*sin(a);
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
% axis([0,135,15,90]);
for i=1:1:100000
    v1(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b(1)*v1(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b(1)*v1(i)*vy(i))*dt;
    x1(i+1)=x1(i)+vx(i)*dt;
    y1(i+1)=y1(i)+vy(i)*dt;
    if y1(i)<0;
        break;
    end
end
plot(0:0.1:12.7,v1);
for i=1:1:100000
    v2(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b(2)*v2(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b(2)*v2(i)*vy(i))*dt;
    x2(i+1)=x2(i)+vx(i)*dt;
    y2(i+1)=y2(i)+vy(i)*dt;
    if y2(i)<0;
        break;
    end
end
plot(0:0.1:12.2,v2);
for i=1:1:100000
    v3(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b(3)*v3(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b(3)*v3(i)*vy(i))*dt;
    x3(i+1)=x3(i)+vx(i)*dt;
    y3(i+1)=y3(i)+vy(i)*dt;
    if y3(i)<0;
        break;
    end
end
plot(0:0.1:11.4,v3);
for i=1:1:100000
    v4(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b(4)*v4(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b(4)*v4(i)*vy(i))*dt;
    x4(i+1)=x4(i)+vx(i)*dt;
    y4(i+1)=y4(i)+vy(i)*dt;
    if y4(i)<0;
        break;
    end
end
plot(0:0.1:10.4,v4);
for i=1:1:100000
    v5(i)=sqrt(vx(i)^2+vy(i)^2);
    vx(i+1)=vx(i)-b(5)*v5(i)*vx(i)*dt;
    vy(i+1)=vy(i)-(g+b(5)*v5(i)*vy(i))*dt;
    x5(i+1)=x5(i)+vx(i)*dt;
    y5(i+1)=y5(i)+vy(i)*dt;
    if y5(i)<0;
        break;
    end
end
plot(0:0.1:8.6,v5);
txt1 = text(6,30,'b=0.005','fontsize',15);
txt2 = text(6,39,'b=0.002','fontsize',15);
txt3 = text(6,47,'b=0.001','fontsize',15);
txt3 = text(6,53,'b=0.0005','fontsize',15);
txt3 = text(6,60,'b=0.0002','fontsize',15);
xlabel('t (s)');
ylabel('v (m/s)');