t = linspace(0,20,10000);
x_0 = 1;
w_0 = 1;
B = [0,0.02,0.1,0.3,1];
B_1 = 0.00;
w_1 = sqrt((w_0)^2-(B_1)^2)
%c = B_1*
x_t = x_0*(e.**(-B_1*t)).*(cos(w_1.*t)+(B_1/w_0)*sin(w_1.*t));
y_t = x_0*(e.**(-B_1*t)).*(1+B_1.*t); % critical damping

figure(1); clf
plot(t,x_t,'b-','linewidth',2);
xlabel('t in seconds')
ylabel('X(t) in meters')
title(" a cart on a frictionless track that is attached to a spring trajectory with linear air resistance, Beta = 0")
print figure1.pdf    # The extension specifies the format

