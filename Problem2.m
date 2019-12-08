x1 = input('Please enter the first x coordinate of the circle: ');
y1 = input('Please enter the first y coordinate of the circle: '); 
x2 = input('Please enter the second x coordinate of the circle: ');
y2 = input('Please enter the second y coordinate of the circle: ');
x3 = input('Please enter the third x coordinate of the circle: ');
y3 = input('Please enter the third y coordinate of the circle: ');
%Asks for user input of 3 coordinates of x and y respectively

x12 = x1 - x2;      %Code block that computes for center,
x13 = x1 - x3;      %radius, and vectors DEF
x31 = x3 - x1;      %using final initial formulas,
x21 = x2 - x1;      %and 2 equations (? ? ?)2 + (? ? ?)2 = ?2 
y12 = y1 - y2;      %?2 + ?2 + ?? + ?? + ? = 0 
y13 = y1 - y3;
y31 = y3 - y1;
y21 = y2 - y1;
px13 = (x1.^2) - (x3.^2);
px21 = (x2.^2) - (x1.^2);
py13 = (y1.^2) - (y3.^2);
py21 = (y2.^2) - (y1.^2);
F1 = (((px13.*xa) + (py13.*xa) + (px21.*xb) + (py21.*xb)));
F2 = (2*((yc.*xa)-(yd.*xb)));
F = floor(F1/F2);   
G1 = ((px13.*ya)+(py13.*ya)+(px21.*yb)+(py21.*yb));
G2 = (2*((xc.*ya)-(xd.*yb)));
G = floor(G1/G2);
C = (-x1.^2)-(y1.^2)-(2.*F.*y1)-(2.*G.*x1); 
k = ~F;
h = ~G;
sqr = (h.^2).*(k.^2)-C;
l = [2*G,2*F,C];
r = round(sqrt(sqr),5);

fprintf("Center of Circle(h) = %.0f \n", h) %Finally prints 
fprintf("Center of Circle(k) = %.0f \n", k) %Center, radius and
fprintf("Radius of Circle = %.0f \n", r)    %Vector DEF
disp("Vector of Circle = ")
disp(l)