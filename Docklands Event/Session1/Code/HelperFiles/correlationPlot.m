function correlationPlot(cdata1,lbls)
    %CREATEFIGURE1(CDATA1)
    %  CDATA1:  image cdata
    
    %  Auto-generated by MATLAB on 26-Feb-2012 12:07:49
    
    % Create figure
    figure1 = figure;
    
    % Create axes
    axes1 = axes('Parent',figure1,'YDir','reverse','Layer','top','CLim',[-1 1]);
    % Uncomment the following line to preserve the X-limits of the axes
    % xlim(axes1,[0.5 6.5]);
    % Uncomment the following line to preserve the Y-limits of the axes
    % ylim(axes1,[0.5 6.5]);
    box(axes1,'on');
    hold(axes1,'all');
    
    % Create image
    image(cdata1,'Parent',axes1,'CDataMapping','scaled');
    
    axis tight
    
    % Create colorbar
    colorbar('peer',axes1);
    
    set(axes1,'xtick',1:size(cdata1,1),'xticklabel',lbls)
    set(axes1,'ytick',1:size(cdata1,1),'yticklabel',lbls)
    title('\bf Correlation Plot')