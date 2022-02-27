

x=escalon123(:,1);
y=escalon123(:,2);

figure1 = figure;
axes1 = axes('Parent',figure1,'YGrid','on','XGrid','on');
ylim(axes1,[-0.2 1.2]);
box(axes1,'on');
hold(axes1,'on');
plot(x,y,'DisplayName','Escalon unitario','LineWidth',2);
xlabel('t[seg]');
ylabel('u(t)');
title({'Escalon',''});
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.564823717758594 0.870551656884501 0.186250004323324 0.0370370362091949],...
    'EdgeColor',[0 0 0]);
