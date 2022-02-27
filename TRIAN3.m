clc
clear all
Fs=100;
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



figure1 = figure;

axes1 = axes('Parent',figure1,'YGrid','on','XGrid','on');
ylim(axes1,[-0.2 2.7]);
box(axes1,'on');
hold(axes1,'on');
plot(t5,r3,'g','DisplayName','Escalon unitario','LineWidth',4);
xlabel('t[seg]');
ylabel('u(t)');
title({'Rampa',''});
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.564823717758594 0.870551656884501 0.186250004323324 0.0370370362091949],...
    'EdgeColor',[0 0 0]);