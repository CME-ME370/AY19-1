% Sierpinski Triangle
% Joe Cymerman

x = 0;
y = 0;
size = 10;
order = 4;

drawSierpinskiTriangle( x, y, size, order)
hold on

function drawSierpinskiTriangle( x, y, size, order) 
    % check input
    if (x < 0 || y < 0 || order < 0) 
        fprintf('x, y, and order must not be negative');
    
    % base case
    elseif (order == 0) 
        % do nothing
    
    % recursive case
    else 
        line([x x + size], [y y]);
        line([x x + size/2], [y y + sqrt(3.0)/2*size]);
        line([x+size x+size/2], [y y+sqrt(3.0)/2*size]);
        order = order - 1;
        drawSierpinskiTriangle(x, y, size/2, order);
        x = x + size/2;
        drawSierpinskiTriangle(x, y, size/2, order);
        x = x - size/4;
        y = y + sqrt(3.0)/4*size;
        drawSierpinskiTriangle(x, y, size/2, order);
    end
end