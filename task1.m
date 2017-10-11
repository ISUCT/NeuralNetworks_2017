b = 2.5;
xn=1.28; 
xk=3.28; 
dx=0.4;
X=[1.1,2.4,3.6,1.7,3.9]; 
X=sort(X);
x=xn:dx:xk;

function yres=yCalc(x,b)
  chisl = 1 + sin(b.^3 + x.^3);
  znam = (abs(b.^3 + x.^3)).^(1/3);
  yres = chisl./znam;
end

y1 = yCalc(x,b);
y2 = yCalc(X,b);

plot(x,y1,'r:o','LineWidth',3)
title('First lab part A')
xlabel('x')
ylabel('y1')
grid on;

hold on;

plot(X,y2,'b-*','LineWidth',3)
title('First lab part B')


