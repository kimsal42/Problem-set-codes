# solution to problem 4 homework set 9
# part c
 trange = linspace(0,20,10000);
 
 %% Defining initial conditions
Thi0 = 0; % m
dThi0 = 0; % m/s
R0 = [Thi0;dThi0]; % Initial condition arrayfun
Thipi = pi/2;
R1 = [Thipi,dThi0];
ThipiN = -pi/2;
R2 = [ThipiN,dThi0];
function [dx_dt] = sho_ode(X,t)

  % initial conditions
  gamma = 1.06; 
  w = 2*pi; % omega
  w_0 = 1.5*w ;% omega_0
  Beta = w_0/4; % Beta 
  
  X1 = X(1);
  X2 = X(2);
  dX1 = X2;
  dX2 = ((w_0^2)*gamma*cos(w*t))-2*Beta*X2-(w_0^2)*sin(X1);
  dx_dt = [dX1;dX2];
end
[results] = lsode('sho_ode',R0,trange);
[results1] = lsode('sho_ode',R1,trange);
[results2] = lsode('sho_ode',R2,trange);

figure(1); clf
plot(trange,results(:,1),'b-','linewidth',2);
hold on
plot(trange, results1(:,1),'g-','linewidth',2);
hold on
plot(trange, results2(:,1),'r-','linewidth',2);
xlabel('t (s)')
ylabel('X(t)')
set(gca,'fontname','Arial','fontsize',20)
xlim([trange(1),trange(end)]);
title("Numerical solution for a dynamics of damped,driven pendulum, gamma = 1.06");
legend ({"Thi0 = 0", "Thi0 = pi/2","Thi0 = -pi/2"}, "location", "best");
print figure1.pdf    # The extension specifies the format
%print -djpg figure1  # Will produce "figure1.jpg" file