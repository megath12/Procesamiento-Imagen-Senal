clc
clear all
Fs=100;
t=[-2.5:1/Fs:2.5];
Lt=length(t);
for k=1:Lt;
    if t(k)<0;
        u(k)=0;
    else
        u(k)=1;
    end
end
r=t.*u;
t1=t-1


t2=[-2.5:1/Fs:2.5];
Lt=length(t2);
for k1=1:Lt;
    if t2(k1)<0;
        u1(k1)=0;
    else
        u1(k1)=1;
    end
end
r2=2*t2.*u1;
t3=t2;




t4=[-2.5:1/Fs:2.5];
Lt=length(t4);
for k4=1:Lt;
    if t4(k4)<0;
        u4(k4)=0;
    else
        u4(k4)=1;
    end
end
r3=t4.*u4;
t5=t4+1




tt=t1-t3;
rr=r;






figure1 = figure;

axes1 = axes('Parent',figure1,'YGrid','on','XGrid','on');
ylim(axes1,[-0.2 2.7]);
box(axes1,'on');
hold(axes1,'on');
plot(tt,rr,'g','DisplayName','Escalon unitario','LineWidth',4);
xlabel('t[seg]');
ylabel('u(t)');
title({'Rampa',''});
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.564823717758594 0.870551656884501 0.186250004323324 0.0370370362091949],...
    'EdgeColor',[0 0 0]);