% -- Punto 1 -- %
%{
%f11 = [1,0,1,0,1,0,1,0];
%f12 = [0,1,0,1,0,1,0,1];

%A1 = [f11;f12;f11;f12;f11;f12;f11;f12];
%figure(1); imshow(A1)

f21 = [ones(100,100),zeros(100,100),ones(100,100),zeros(100,100),ones(100,100),zeros(100,100),ones(100,100),zeros(100,100)];
f22 = [zeros(100,100),ones(100,100),zeros(100,100),ones(100,100),zeros(100,100),ones(100,100),zeros(100,100),ones(100,100)];
A2 = [f21;f22;f21;f22;f21;f22;f21;f22];
%figure(2); imshow(A2)

%imwrite(A2,'ajedrez_juanc_llanos.bmp')

%imread('ajedrez_juanc_llanos.bmp')

A3 = imread('ajedrez.bmp');
figure(3); imshow(A3)

disp(A3);
[m,n]=size(A3);
disp(m);
disp(n);
%imwrite(A3,'ajedrez2_juanc_llanos.bmp')

f31 = [zeros(17,17),ones(17,17),zeros(17,17),ones(17,17),zeros(17,17),ones(17,17),zeros(17,17)];
f32 = [ones(17,17),zeros(17,17),ones(17,17),zeros(17,17),ones(17,17),zeros(17,17),ones(17,17)];

A4 = [f31;f32;f31;f32;f31];
figure(4); imshow(A4)
imwrite(A4,'ajedrez2_juanc_llanos.bmp')
%}

% -- Punto 2 -- %
%{
B1 = imread('balcones256.bmp');
figure(1);imshow(B1)
%disp(B1);
[m,n] = size(B1);
B2;
for i=1:m
    for j=1:n
        if B1(i,j) < 127
            B2(i,j) = 0;
        else
            B2(i,j) = 255;
        end
    end
end

imwrite(B2,'balcones2_juanc_llanos.bmp')
figure(2); imshow(B2)
%}

% -- Punto 3 -- %

%{
RGB = zeros(600,1000,3);
RGB(1:400,201:800,1) = 255;
RGB(201:600,1:600,2) = 255;
RGB(201:600,401:1000,3) = 255;
%figure(1);imshow(RGB)

RGB2 = zeros(400,600,3);
RGB2(1:150,1:600,1) = 255;
RGB2(1:150,1:600,2) = 255;

RGB2(151:276,1:600,3) = 255;

RGB2(276:400,1:600,1) = 255;

figure(1);imshow(RGB2)
imwrite(RGB2,'Colombia_juanc_llanos.bmp')
%}

% -- Punto 4 -- %

%{
C1 = imread('guacamaya.bmp');
[m,n] = size(C1);
disp(m);
disp(n);
C1(1:m,1:700,2) = 0;
imshow(C1);
%}

% -- Punto 5 -- %

alfa = 0.5;
D1 = imread('rostro1.jpg');
D2 = imread('rostro2.jpg');
[m,n] = size(D1);

RGB = zeros(600,1000,3);
RGB = alfa*D1 + (1-alfa)*D2;
figure(1);imshow(RGB)


