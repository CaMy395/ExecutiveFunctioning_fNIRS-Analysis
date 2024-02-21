%Forward Euler
clc,clear;
tf=5;
dt=0.1;
nsteps=round(tf/dt);
yold=1;
ynew=0;
for j=1:nsteps    
    t=j*dt;    
    ynew=yold+dt*(3*t+yold);    
    tplot(j)=t;    
    yplot(j)=ynew;    
    yold=ynew;    % or use this one: 
%y(j+1)=y(j)+dt*(-y(j))
end
plot(tplot,yplot)

%%
clc,clear;
nsteps=100;
dt = 0.1;
z1old = 0;
z2old = 1;
tplot=zeros(1,nsteps);
z1plot=zeros(1,nsteps);
x = [0:pi/6:pi];
for j = 1:nsteps    
    t = j*dt;    
    z1new = z1old+dt*(z2old) %change this when needed%    
    z2new = z2old+dt*(cos(x)-z2old-z1old)    
    tplot(j) = t;
    z1plot(j) = z1new;    
    z1old = z1new;    
    z2old = z2new;
end
plot (tplot,z1plot,'k')