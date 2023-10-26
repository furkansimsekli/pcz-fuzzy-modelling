% product and algebraic product
x1=[0:0.1:2]
y1=0*x1
x2=[2:0.1:4]
y2=1/2*x2-1
x3=[4:0.1:6]
y3=0*x3+1

xa=[x1 x2 x3]
ya=[y1 y2 y3]

x4=[0:0.1:2]
y4=0*x4+1
x5=[2:0.1:4]
y5=-1/2*x5+2
x6=[4:0.1:6]
y6=0*x6

xb=[x4 x5 x6]
yb=[y4 y5 y6]

p=min(ya,yb)
ap=ya.*yb

% plot the curves
plot(xa,ya,'g',xb,yb,'m',xa,p,'b-x',xa,ap,'k-*')
grid on
legend('MFA','MFB','MFC','MFD')

% axis, line width, font size
set(gca,'fontsize',16)

% calculate cardinal
cardC=sum(p)
cardD=sum(ap)

