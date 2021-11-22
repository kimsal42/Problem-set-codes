%Solutions for number 3 part b
t = linspace(0,4,100);
x_0 = 2;
w = 2*pi;
w_0 = 5*w;
v_0 = 0;
f_0 = 1000;
Beta = w_0/20;
A = sqrt(f_0^2/((w_0^2-w^2)^2+(Beta^2)*4*(w^2)));

Delta = atan((2*Beta*w)/((w_0)^2 - w^2));

w_1 = sqrt((w_0)^2-(Beta)^2);

B_1 = x_0 - A*cos(Delta);
B_2 = (1/w_1)*(v_0- (w*A*sin(Delta)) + Beta*B_1);

x_t = A.*cos(w.*t-Delta) + (e.**(-Beta.*t)).*((B_1.*cos(w_1.*t))+(B_2.*sin(w_1.*t)));

%c = B_1*
%x_t = x_0*(e.**(-B_1*t)).*(cos(w_1.*t)+(B_1/w_0)*sin(w_1.*t)); % under damping

%y_t = x_0*(e.**(-B_1*t)).*(1+B_1.*t); % critical damping

%z_t = x_0*(e.**((B_1-w_1)*t)).*(B_1+w_1)/w_1; % Overdamping

figure(1); clf
plot(t,x_t,'b-','linewidth',2);
xlabel('t in seconds')
ylabel('X(t) in meters')
title(" resulting motion for problem 3 part b")
print figure1.pdf    # The extension specifies the format

%Solutions for number 3 part b

t = linspace(0,12,10000);
x_0 = 2;
w = 2*pi;
w_0 = 0.25*w;
v_0 = 0;
f_0 = 1000;
Beta = 0.2*w_0;
A = sqrt(f_0^2/((w_0^2-w^2)^2+(Beta^2)*4*(w^2)));

Delta = atan((2*Beta*w)/((w_0)^2 - w^2));

w_1 = sqrt((w_0)^2-(Beta)^2);

B_1 = x_0 - A*cos(Delta);
B_2 = (1/w_1)*(v_0- (w*A*sin(Delta)) + Beta*B_1);

x_h =(e.**(-Beta.*t)).*((B_1.*cos(w_1.*t))+(B_2.*sin(w_1.*t)));

x_t = A.*cos(w.*t-Delta) + (e.**(-Beta.*t)).*((B_1.*cos(w_1.*t))+(B_2.*sin(w_1.*t)));

figure(2); hold
plot(t,x_h,'b-','linewidth',2);
plot(t,x_t,'g-','linewidth',2);
xlabel('t in seconds')
ylabel('X(t) in meters')
title(" resulting motion for problem 3 part c")
legend ({"Homegenous solution", "Total solution"}, "location", "northeast");
print figure2.pdf    # The extension specifies the format
