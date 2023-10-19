% Sigmoidal membership functions
xa=[-1:0.25:9]
ya=1./(1+exp(-4*(xa-3)))

xb=[-1:0.25:9]
yb=1./(1+exp(-2*(xb-5)))

xc=[-1:0.25:9]
yc=1./(1+exp(-8*(xc-5)))

l03=xa*0+0.3
l06=xb*0+0.6

% plot the curves
plot(xa,ya,'r-*',xb,yb,'g-+',xc,yc,'b-d',xa,l03,'m',xb,l06,'c')
grid on

% axis, line width, font size
set(gca,'fontsize',16)

% add descriptions to the drawn graphs
text(2.2,0.9,'MFA','fontsize',16)
text(6.5,0.9,'MFB','fontsize',16)
text(4,0.9,'MFC','fontsize',16)

