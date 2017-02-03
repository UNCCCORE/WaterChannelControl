function [hFig tscc] = plotOverview(tsc)


hFig = figure('units','normalized','outerposition',[0 0 1 1]);
hax1 = subplot(2,1,1);
hold on
grid on
hRollFilt       = plot(tsc.rollFiltered,'b');
hRoll           = plot(tsc.roll,'r:');
hRollSetPoint   = plot(tsc.rollSetpoint,'k--');
ylabel('Roll v RollSP')
legend([hRollFilt hRoll hRollSetPoint],{'\phi_{Filtered}','\phi','\phi_{SP}'})
title('Select Time of Interest');
set(gca,'YLim',[min(tsc.roll.data) max(tsc.roll.data)])
set(gca,'FontSize',20);

hax2 = subplot(2,1,2);
hold on
grid on
hvy = plot(tsc.vy,'b');
hva = plot(tsc.va,'k');
ylabel('Velocities')
legend([hvy, hva],{'v_y','v_{app}'},'Location','best')
if max(abs(tsc.vy.data))>100
    set(gca,'YLim',[-50 50])
end
set(gca,'FontSize',20);

linkaxes([hax1 hax2],'x');

[times,~] = ginput(2);
startTime = times(1);
endTime = times(2);




tscc = getsampleusingtime(tsc,startTime,endTime);

clf(hFig);

hax1=subplot(3,1,1);
hold on
grid on
hRollFilt       = plot(tscc.rollFiltered,'b');
hRoll           = plot(tscc.roll,'r:');
hRollSetPoint   = plot(tscc.rollSetpoint,'k--');
legend([hRollFilt hRoll hRollSetPoint],{'\phi_{Filtered}','\phi','\phi_{SP}'},'Location','best')
set(hax1,'FontSize',20);

hax2=subplot(3,1,2);
hold on
grid on
plot(tscc.powerFactor);
hline = line(get(hax2,'XLim'),mean(tscc.powerFactor.data)*[1 1]);
set(hline,'Color',[0 0.5 0])
title(sprintf('Mean PF = %s',num2str(mean(tscc.powerFactor.data),3)));
set(hax2,'FontSize',20);

hax3=subplot(3,1,3);
hold on
grid on
hva = plot(tscc.va,'k--');
hvy = plot(tscc.vy,'r:');
hvyFilt = plot(tscc.vyFiltered,'b');
legend([hva hvy hvyFilt],{'v_{app}','v_y','v_{y,Filtered}'},'Location','best');
set(hax3,'FontSize',20);

linkaxes([hax1 hax2 hax3],'x')
end