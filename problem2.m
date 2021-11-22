t = linspace(0,2,10000);
x_0 = 1;
w_0 = 2*pi;
B = [0,1,2,4,6,2*pi,10,20];
B_1 = 10;
w_1 = sqrt((w_0)^2-(B_1)^2);
%c = B_1*
x_t = x_0*(e.**(-B_1*t)).*(cos(w_1.*t)+(B_1/w_0)*sin(w_1.*t)); % under damping

y_t = x_0*(e.**(-B_1*t)).*(1+B_1.*t); % critical damping

z_t = x_0*(e.**(-(B_1-w_1)*t)).*(B_1+w_1)/w_1; % Overdamping

figure(7); clf
plot(t,z_t,'b-','linewidth',2);
xlabel('t in seconds')
ylabel('X(t) in meters')
title(" a cart on a spring trajectory with linear air resistance, Beta = 10")
print figure7.pdf    # The extension specifies the format