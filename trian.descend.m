clc
clear all
Fs=100;
t=[-2.5:1/Fs:2.5];
Lt=length(t);
for k=1:Lt;
    if t(k)<0
        u(k)=0;
    else
        u(k)=1;
    end
end
r=-t.*u;
t1=t-1 % ranpa ascendente en -1

figure1 = figure;


axes1 = axes('Parent',figure1,'YGrid','on','XGrid','on');
ylim(axes1,[-.5 1.5]);
box(axes1,'on');
hold(axes1,'on');
plot(t1,r,'g','DisplayName','Escalon unitario','LineWidth',4);
xlabel('t[seg]');
ylabel('u(t)');
title({'Rampa',''});
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.564823717758594 0.870551656884501 0.186250004323324 0.0370370362091949],...
    'EdgeColor',[0 0 0]);
