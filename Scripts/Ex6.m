% probabilistic sum and Łukasiewicz sum
x=[-14:0.2:4]
ya=exp(-(((x+3)/2).^2))
yb=exp(-(((x+6)/2).^2))
yc=exp(-(((x+9)/2).^2))
yd=ya+yb-ya.*yb
ydd=yd+yc-yd.*yc
ye=min(1,ya+yb)

% alpha cuts
l03=x*0+0.3
l05=x*0+0.5

% plot the curves
plot(x,ya,'r',x,yb,'g',x,yc,'m',
     x,yd,'c-d',x,ydd,'y-d',x,ye,'b-+',
     x,l03,'c',x,l05,'b')
grid on
legend('MFA','MFB','MFC','MFD','MFDD','MFE')

% axis, line width, font size
set(gca,'fontsize',16)

% calculate cardinal
cardD=sum(yd)
cardE=sum(ye)
