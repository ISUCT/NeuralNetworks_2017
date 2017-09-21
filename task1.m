a = 2.0; 
b = 3.0;
xn=0.11; 
xk=0.36; 
dx=0.05;
X=[0.08,0.26,0.35,0.41,0.53]; 
X=sort(X);
x=xn:dx:xk;
function yres=yCalc(x,a,b)
  yres = asin(x.^a)+ acos(x.^b);
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


