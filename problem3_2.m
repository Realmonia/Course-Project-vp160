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
%axis([-25,450,0,275]);
    vx(1)=90*cos(a(1));
    vy(1)=90*sin(a(1));
    v1(1)=90;
    y1(1)=0;
    for i=1:1:110000
        vx(i+1)=vx(i)-k*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k*vy(i))*dt;
        v1(i)=sqrt(vx(i)^2+vy(i)^2);
        y1(i+1)=y1(i)+vy(i)*dt;
        if y1(i)<0;
            break;
        end
    end
    plot(0:0.01:14.84,v1);
    vx(1)=90*cos(a(2));
    vy(1)=90*sin(a(2));
    v2(1)=90;
    y1(1)=0;
    for i=1:1:110000
        vx(i+1)=vx(i)-k*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k*vy(i))*dt;
        v2(i)=sqrt(vx(i)^2+vy(i)^2);
        y1(i+1)=y1(i)+vy(i)*dt;
        if y1(i)<0;
            break;
        end
    end
    plot(0:0.01:13.13,v2);
    vx(1)=90*cos(a(3));
    vy(1)=90*sin(a(3));
    v3(1)=90;
    y1(1)=0;
    for i=1:1:110000
        vx(i+1)=vx(i)-k*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k*vy(i))*dt;
        v3(i)=sqrt(vx(i)^2+vy(i)^2);
        y1(i+1)=y1(i)+vy(i)*dt;
        if y1(i)<0;
            break;
        end
    end
    plot(0:0.01:11.02,v3);
    vx(1)=90*cos(a(4));
    vy(1)=90*sin(a(4));
    v4(1)=90;
    y1(1)=0;
    for i=1:1:110000
        vx(i+1)=vx(i)-k*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k*vy(i))*dt;
        v4(i)=sqrt(vx(i)^2+vy(i)^2);
        y1(i+1)=y1(i)+vy(i)*dt;
        if y1(i)<0;
            break;
        end
    end
    plot(0:0.01:9.37,v4);
    vx(1)=90*cos(a(5));
    vy(1)=90*sin(a(5));
    v5(1)=90;
    y1(1)=0;
    for i=1:1:110000
        vx(i+1)=vx(i)-k*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k*vy(i))*dt;
        v5(i)=sqrt(vx(i)^2+vy(i)^2);
        y1(i+1)=y1(i)+vy(i)*dt;
        if y1(i)<0;
            break;
        end
    end
    plot(0:0.01:8.11,v5);
txt1 = text(10,30,'a=¦Ð/2','fontsize',15);
txt2 = text(7,25,'a=¦Ð/3','fontsize',15);
txt3 = text(7,37,'a=¦Ð/4','fontsize',15);
txt4 = text(7,43,'a=¦Ð/5','fontsize',15);
txt5 = text(5.5,47,'a=¦Ð/6','fontsize',15);
xlabel('t (s)');
ylabel('v (m/s)');