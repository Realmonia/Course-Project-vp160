clear all;
clc;
a=pi/4;
k=0.1;
dt1=1;
g=9.8;
vx(1)=90*cos(a);
vy(1)=90*sin(a);
x1(1)=0;
y1(1)=0;
x2(1)=0;
y2(1)=0;
hold on;
axis([0,14,0,40]);
for i=1:1:100000
    vx(i+1)=vx(i)-k*vx(i)*dt1;
    vy(i+1)=vy(i)-(g+k*vy(i))*dt1;
    x1(i+1)=x1(i)+vx(i)*dt1;
    y1(i+1)=y1(i)+vy(i)*dt1;
    x2(i+1)=-1/k*vx(1)*exp(-k*dt1*i)+vx(1)/k;
    y2(i+1)=-1/k*(1/k*g*(exp(-k*dt1*i)-1)+vy(1)*(exp(-k*dt1*i)-1)+g*(dt1*i));
    d1(i)=sqrt((x1(i)-x2(i))^2+(y1(i)-y2(i))^2);
    if y2(i)<0
        break;
    end
end
    plot(0:1:12.5,d1);
dt2=0.5;
for i=1:1:100000
    vx(i+1)=vx(i)-k*vx(i)*dt2;
    vy(i+1)=vy(i)-(g+k*vy(i))*dt2;
    x1(i+1)=x1(i)+vx(i)*dt2;
    y1(i+1)=y1(i)+vy(i)*dt2;
    x2(i+1)=-1/k*vx(1)*exp(-k*dt2*i)+vx(1)/k;
    y2(i+1)=-1/k*(1/k*g*(exp(-k*dt2*i)-1)+vy(1)*(exp(-k*dt2*i)-1)+g*(dt2*i));
    d2(i)=sqrt((x1(i)-x2(i))^2+(y1(i)-y2(i))^2);
    if y2(i)<0
        break;
    end
end
    plot(0:0.5:11.5,d2);
dt3=0.01;
for i=1:1:100000
    vx(i+1)=vx(i)-k*vx(i)*dt3;
    vy(i+1)=vy(i)-(g+k*vy(i))*dt3;
    x1(i+1)=x1(i)+vx(i)*dt3;
    y1(i+1)=y1(i)+vy(i)*dt3;
    x2(i+1)=-1/k*vx(1)*exp(-k*dt3*i)+vx(1)/k;
    y2(i+1)=-1/k*(1/k*g*(exp(-k*dt3*i)-1)+vy(1)*(exp(-k*dt3*i)-1)+g*(dt3*i));
    d3(i)=sqrt((x1(i)-x2(i))^2+(y1(i)-y2(i))^2);
    if y2(i)<0
        break;
    end
end
    plot(0:0.01:11.01,d3);
txt1 = text(10,1,'dt=0.01s','fontsize',15);
txt2 = text(11,15,'dt=0.5s','fontsize',15);
txt3 = text(12,32,'dt=1s','fontsize',15);
xlabel('t (s)');
ylabel('distance (m)');