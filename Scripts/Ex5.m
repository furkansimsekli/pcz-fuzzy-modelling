% algebraic product and Lukasiewicz product
x=[0:0.15:10]
ya=exp(-(((x-5)/2).^2))
yb=exp(-(((x-6)/2).^2))
yc=exp(-(((x-7)/2).^2))
yd=ya.*yb.*yc
ye_ab=max(0,ya+yb-1)
ye_abc=max(0,ye_ab+yc-1)

% plot the curves
plot(x,ya,'r',x,yb,'m',x,yc,'g-o',x,yd,'b-*',x,ye_abc,'c-+')
grid on
legend('MFA','MFB','MFC','MFD','MFE')

% axis, line width, font size
set(gca,'fontsize',16)

% calculate height

hD=max(yd)-min(yd)
hE=max(ye_abc)-min(ye_abc)

% calculate cardinal
cardD=sum(yd)
cardE=sum(ye_abc)

