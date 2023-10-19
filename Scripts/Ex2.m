% Trapezoidal membership function and Gaussian membership functions
x1=[-15:0.25:0]
y1=0*x1
x2=[0:0.25:3]
y2=1/3*x2
x3=[3:0.25:5]
y3=0*x3+1
x4=[5:0.25:8]
y4=-1/3*x4+2.6667
x5=[8:0.25:15]
y5=0*x5

xa=[x1 x2 x3 x4 x5]
ya=[y1 y2 y3 y4 y5]

xb=[-15:0.25:15]
yb=exp(-(((xb-5)/2).^2))

xc=[-15:0.25:15]
yc=exp(-(((xc+8)/4).^2))
l02=xb*0+0.2
l05=xc*0+0.5

% plot the curves
plot(xa,ya,'m-o',xb,yb,'c-o',xc,yc,'r',xb,l02,'m',xc,l05,'c')
grid on

% axis, line width, font size
set(gca,'fontsize',16)

% add descriptions to the drawn graphs
text(0,0.9,'MFA','fontsize',16)
text(6,0.9,'MFB','fontsize',16)
text(-6,0.9,'MFC','fontsize',16)
