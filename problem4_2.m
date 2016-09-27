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
%axis([-25,450,0,275]);
    vx(1)=90*cos(a);
    vy(1)=90*sin(a);
    v1(1)=90;
    y1(1)=0;
    for i=1:1:110000
        vx(i+1)=vx(i)-k(1)*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k(1)*vy(i))*dt;
        v1(i)=sqrt(vx(i)^2+vy(i)^2);
        y1(i+1)=y1(i)+vy(i)*dt;
        if y1(i)<0;
            break;
        end
    end
    plot(0:0.01:12.48,v1);
    vx(1)=90*cos(a);
    vy(1)=90*sin(a);
    v2(1)=90;
    y1(1)=0;
    for i=1:1:110000
        vx(i+1)=vx(i)-k(2)*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k(2)*vy(i))*dt;
        v2(i)=sqrt(vx(i)^2+vy(i)^2);
        y1(i+1)=y1(i)+vy(i)*dt;
        if y1(i)<0;
            break;
        end
    end
    plot(0:0.01:11.84,v2);
    vx(1)=90*cos(a);
    vy(1)=90*sin(a);
    v3(1)=90;
    y1(1)=0;
    for i=1:1:110000
        vx(i+1)=vx(i)-k(3)*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k(3)*vy(i))*dt;
        v3(i)=sqrt(vx(i)^2+vy(i)^2);
        y1(i+1)=y1(i)+vy(i)*dt;
        if y1(i)<0;
            break;
        end
    end
    plot(0:0.01:11.02,v3);
    vx(1)=90*cos(a);
    vy(1)=90*sin(a);
    v4(1)=90;
    y1(1)=0;
    for i=1:1:110000
        vx(i+1)=vx(i)-k(4)*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k(4)*vy(i))*dt;
        v4(i)=sqrt(vx(i)^2+vy(i)^2);
        y1(i+1)=y1(i)+vy(i)*dt;
        if y1(i)<0;
            break;
        end
    end
    plot(0:0.01:9.92,v4);
    vx(1)=90*cos(a);
    vy(1)=90*sin(a);
    v5(1)=90;
    y1(1)=0;
    for i=1:1:110000
        vx(i+1)=vx(i)-k(5)*vx(i)*dt;
        vy(i+1)=vy(i)-(g+k(5)*vy(i))*dt;
        v5(i)=sqrt(vx(i)^2+vy(i)^2);
        y1(i+1)=y1(i)+vy(i)*dt;
        if y1(i)<0;
            break;
        end
    end
    plot(0:0.01:8.37,v5);
txt1 = text(6,15,'k=0.5','fontsize',15);
txt2 = text(6,25,'k=0.2','fontsize',15);
txt3 = text(6,38,'k=0.1','fontsize',15);
txt4 = text(6,48,'k=0.05','fontsize',15);
txt5 = text(6,58,'k=0.02','fontsize',15);
xlabel('t (s)');
ylabel('v (m/s)');