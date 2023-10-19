% Triangular function
x1=[-8:0.2:0]
y1=0*x1
x2=[0:0.2:3]
y2=1/3*x2
x3=[3:0.2:5]
y3=-1/2*x3+2.5
x4=[5:0.2:7]
y4=0*x4
xa=[x1 x2 x3 x4]
ya=[y1 y2 y3 y4]

x5=[-8:0.2:-6]
y5=0*x5
x6=[-6:0.2:-2]
y6=1/4*x6+1.5
x7=[-2:0.2:-1]
y7=-1*x7-1
x8=[-1:0.2:7]
y8=0*x8

xb=[x5 x6 x7 x8]
yb=[y5 y6 y7 y8]

plot(xa,ya,'g-o',xb,yb,'r-o')
grid on

% axis, line width, font size
set(gca,'fontsize',16)

text(4,0.8,'MFA','fontsize',16)
text(-1.2,0.8,'MFB','fontsize',16)
