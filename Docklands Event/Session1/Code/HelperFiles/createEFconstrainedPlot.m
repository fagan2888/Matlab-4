function createEFconstrainedPlot(prsk1, pret1, qrsk1, qret1, sharpeRatio)
    %CREATEFCONSTRAINEDPLOT(X1,Y1,QRSK1,QRET1,Y2)
    %  PRSK1:  vector of x data
    %  PRET1:  vector of y data
    %  QRSK1:  vector of x data
    %  QRET1:  vector of y data
    %  SHARPERATIO:  vector of y data
    
    %  Auto-generated by MATLAB on 26-Feb-2012 17:25:22
    
    % Create figure
    figure1 = figure;
    colormap('summer');
    
    % Create subplot
    subplot1 = subplot(2,1,1,'Parent',figure1);
    box(subplot1,'on');
    hold(subplot1,'all');
    
    % Create plot
    plot(prsk1,pret1,'Parent',subplot1,'LineWidth',2,'DisplayName','Original');
    
    % Create xlabel
    xlabel('Risk','FontWeight','bold');
    
    % Create ylabel
    ylabel('Return','FontWeight','bold');
    
    % Create title
    title('Efficient Frontier','FontWeight','bold');
    
    % Create plot
    plot(qrsk1,qret1,'Parent',subplot1,'LineWidth',3,'LineStyle','-.',...
        'DisplayName','Constrained');
    
    % Create subplot
    subplot2 = subplot(2,1,2,'Parent',figure1);
    box(subplot2,'on');
    hold(subplot2,'all');
    
    % Create plot
    plot(prsk1,sharpeRatio,'Parent',subplot2,'LineWidth',3,'Color',[1 0 0],...
        'DisplayName','Sharpe Ratio');
    
    % Create legend
    legend(subplot2,'show','Location','SE');
    
    % Create legend
    legend(subplot1,'show');
    
