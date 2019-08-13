% -- Punto 2 -- %
b = (1/4);
b1 = (1);
sol = func2(100000,b1);
disp(sol);

function  sol = func2(k,b)
    x(1) = b;
    for i=1:k
        x(i+1) = (x(i))/(b+x(i));
    end
sol = x(k+1);
end