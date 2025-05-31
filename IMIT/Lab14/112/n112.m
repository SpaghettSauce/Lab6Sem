figure('Position', [200 50 400 400], 'MenuBar', 'none', 'Color', 'w', 'Name', 'mypatch', 'NumberTitle', 'off')
axes('Position', [0 0 1 1], 'Visible', 'off', 'XLim', [0 1], 'YLim', [0 1])
X=[];Y=[];
hm=[]
while 1
    [x, y, flag]=ginput(1)
    if flag==double('x')
        break
    end
    if flag==1;
        X=[X;x];Y=[Y;y];
        h=line(x, y, 'Marker', '.', 'Color', 'k');
        hm=[hm h];
    else
        c=char(flag);
        if(c=='r')|(c=='g')|(c=='b')|(c=='c')|(c=='m')|(c=='y')|(c=='k')|(c=='w')
            patch(X, Y, c)
            delete(hm)
            hm=[];X=[];Y=[];
        else
            disp('не верн‚')
        end
    end
end