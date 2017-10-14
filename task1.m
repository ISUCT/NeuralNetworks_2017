a = 1.6; 
xn= 1.2; 
xk=3.7; 
dx=0.5;
X=[1.28,1.36,2.47,3.68,4.56]; 
X=sort(X);
x=xn:dx:xk;
function yres=yCalc(x,a,b)
  yres = a.^(x.^2-1)-log10(x.^2-1)+(x.^2-1).^1/3;
end
y1 = yCalc(x,a,b);
y2 = yCalc(X,a,b);


plot(x,y1,'r:o','LineWidth',3)
title('First lab part A')
xlabel('x')
ylabel('y1')
grid on;

hold on;

plot(X,y2,'LineWidth',3)
title('First lab part B')


