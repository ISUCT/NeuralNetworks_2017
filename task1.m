a =-2.5 ; 
b = 3.4;
xn=3.5; 
xk=6.5; 
dx=0.6;
X=[2.89,3.54,5.21,6.28,3.48]; 
X=sort(X);
x=xn:dx:xk;

function yres=yCalc(x,a,b)
  chisl = (a+b*x).^2,5;
  znam = 1,8+cos(a*x).^3;
  yres = chisl./znam;
end

y1 = yCalc(x,a,b);
y2 = yCalc(X,a,b);

plot(x,y1,'r:o','LineWidth',3)
title('First lab part A')
xlabel('x')
ylabel('y1')
grid on;

hold on;

plot(X,y2,'b-*','LineWidth',3)
title('First lab part B')


