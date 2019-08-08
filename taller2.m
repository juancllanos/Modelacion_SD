% -- Punto 1 -- %
%{
j = 1;
for i=-1:0.2:1
    x1(j) = i;
    y1(j) = i^2;
    y2(j) = 2*i;
    j = j+1;
end

plot(x1,y1,'Color','green','LineWidth',2)
hold on
plot(x1,y2,'Color','red','LineWidth',2)
hold off

xlim([-2 2]);
ylim([-1 2]);
%}

% -- Punto 2 -- %

%{
x=(0:0.01:1); 
y = zeros(size(x));

v = VideoWriter('prueba.avi'); 
video.FrameRate=60; 
open(v); 

for i=1:100
plot(x(i),y(i),'Marker','o','MarkerSize',10);
    xlim([-1.5, 1.5]); %fijamos los l?mites del eje x de la gr?fica
    ylim([-1.5, 1.5]); %fijamos los l?mites del eje y de la gr?fica
    F = getframe(gcf); %transformamos la im?gen que se est? mostrando en un frame
    writeVideo(v,F); %adicionamos el frame a 'v'
end
close(v); % finalizamos el video
%}

% -- Punto 3 -- %
%{
f = @(t,x)  t-x^2;
ti =-1;
tf =20;
h = 0.1;
x0=1;

[X,T]=euler(ti,tf,h,f,x0);
plot(T,X);
%hold on  
%W = sqrt(T);
%plot(T,W);
%hold off

function [W,X] = euler(xi,xf,h,f,y0)
X = xi:h:xf;
W(1) = y0;
for i=1:1:length(X)-1
    W(i+1)= W(i)+h*f(X(i),W(i));
end
end
%}

% -- Punto 4 -- %
%a)
p1 = [-1 -1 -2];
p2 = [-1 1 -2];
p3 = [1 1 -2];
p4 = [1 -1 -2];
p5 = [0 0 2];

%{
line( [p1(1),p2(1),p3(1),p4(1)],[p1(2),p2(2),p3(2),p4(2)],[p1(3),p2(3),p3(3),p4(3)]);
line([p1(1),p4(1)],[p1(2),p4(2)],[p1(3),p4(3)]);
line([p1(1),p5(1)],[p1(2),p5(2)],[p1(3),p5(3)]);
line([p2(1),p5(1)],[p2(2),p5(2)],[p2(3),p5(3)]);
line([p3(1),p5(1)],[p3(2),p5(2)],[p3(3),p5(3)]);
line([p4(1),p5(1)],[p4(2),p5(2)],[p4(3),p5(3)]);
view(30,30);
%}

%b)
%{
a = [deg2rad(30) deg2rad(15) deg2rad(45)];
Rx = [ 1 0 0 ; 0 cos(a(1)) -sin(a(1)) ; 0 sin(a(1)) cos(a(1))];
Ry = [ cos(a(2)) 0 sin(a(2)) ; 0 1 0 ; -sin(a(2)) 0 cos(a(2))];
Rz = [ cos(a(3)) -sin(a(3)) 0 ;sin(a(3)) cos(a(3)) 0 ; 0 0 1];

pp1 = p1*Rx*Ry*Rz;
pp2 = p2*Rx*Ry*Rz;
pp3 = p3*Rx*Ry*Rz;
pp4 = p4*Rx*Ry*Rz;
pp5 = p5*Rx*Ry*Rz;

line( [pp1(1),pp2(1),pp3(1),pp4(1)],[pp1(2),pp2(2),pp3(2),pp4(2)],[pp1(3),pp2(3),pp3(3),pp4(3)]);
line([pp1(1),pp4(1)],[pp1(2),pp4(2)],[pp1(3),pp4(3)]);
line([pp1(1),pp5(1)],[pp1(2),pp5(2)],[pp1(3),pp5(3)]);
line([pp2(1),pp5(1)],[pp2(2),pp5(2)],[pp2(3),pp5(3)]);
line([pp3(1),pp5(1)],[pp3(2),pp5(2)],[pp3(3),pp5(3)]);
line([pp4(1),pp5(1)],[pp4(2),pp5(2)],[pp4(3),pp5(3)]);

view(30,30);
%}

%c)
%{
v = VideoWriter('prueba.avi'); 
video.FrameRate=60; 
open(v); 

for j=1:360
    i = deg2rad(j);
    Rx = [ 1 0 0 ; 0 cos(i) -sin(i) ; 0 sin(i) cos(i)];
    Ry = [ cos(i) 0 sin(i) ; 0 1 0 ; -sin(i) 0 cos(i)];
    Rz = [ cos(i) -sin(i) 0 ;sin(i) cos(i) 0 ; 0 0 1];

    pp1 = p1*Rx*Ry*Rz;
    pp2 = p2*Rx*Ry*Rz;
    pp3 = p3*Rx*Ry*Rz;
    pp4 = p4*Rx*Ry*Rz;
    pp5 = p5*Rx*Ry*Rz;

    line( [pp1(1),pp2(1),pp3(1),pp4(1)],[pp1(2),pp2(2),pp3(2),pp4(2)],[pp1(3),pp2(3),pp3(3),pp4(3)]);
    line([pp1(1),pp4(1)],[pp1(2),pp4(2)],[pp1(3),pp4(3)]);
    line([pp1(1),pp5(1)],[pp1(2),pp5(2)],[pp1(3),pp5(3)]);
    line([pp2(1),pp5(1)],[pp2(2),pp5(2)],[pp2(3),pp5(3)]);
    line([pp3(1),pp5(1)],[pp3(2),pp5(2)],[pp3(3),pp5(3)]);
    line([pp4(1),pp5(1)],[pp4(2),pp5(2)],[pp4(3),pp5(3)]);

    xlim([-3, 3]); 
    ylim([-3, 3]);
    zlim([-3, 3]);
    view(30,30);
    
    F = getframe(gcf); 
    writeVideo(v,F); 
    clf;
    %pause(1);
end
close(v); % finalizamos el video
%}




