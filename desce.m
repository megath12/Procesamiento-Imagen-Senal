clc
clear all
Fs=100;
t1=[0:1/Fs:1];
Lt1=length(t1);
for k=1:Lt1;
    if t1(k)<0;
        u1(k)=0;
    else
        u1(k)=1;
    end
end
r2=-t1.*u1+1;
%t1=t-1 % ranpa ascendente en -1

figure1 = figure;


axes1 = axes('Parent',figure1,'YGrid','on','XGrid','on');
%ylim(axes1,[-.5 1.5]);
box(axes1,'on');
hold(axes1,'on');
plot(t1,r2,'g','DisplayName','Escalon unitario','LineWidth',4);
xlabel('t[seg]');
ylabel('u(t)');
title({'Rampa',''});
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.564823717758594 0.870551656884501 0.186250004323324 0.0370370362091949],...
    'EdgeColor',[0 0 0]);
