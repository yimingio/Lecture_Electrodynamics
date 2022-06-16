clc; close; close all;
electron=1.60217663*10^(-19);
epsilon=8.854*10^(-12);
a0=5.29177*10^(-11);
m=electron/(4*pi*epsilon*a0^2);


R=@(ra) (m/ra^2)*(2*ra^2+2*ra*a0+a0^2)*exp(-2*ra/a0); %function of the psi100


E=[];
n=10000;
r=linspace(0,a0/10,n);
for i=1:n
    E(i)=R(r(i));
end

plot(r,E,LineWidth=2,LineStyle="-",Color=[1 0 0]);


xlim([-1*10^(-13) 17*10^(-13)]);
ylim([-2*10^(17) 17*10^(17)]);
xlabel("r $(m)$","Interpreter","latex","FontSize",12);
ylabel("E $(NC^{-1})$","Interpreter","latex","FontSize",12);
title({'The electric field image with distance from center of'; ...
    ' electric field of Hydrogen model'},FontSize=20);
text(3*10^(-13),2*10^(17),"$E=\frac{e}{4 \pi a_{0}^{2} " + ...
    "\varepsilon_{0} r^{2}}\left(a_{0}^{2}+2 a_{0} r+2 r^{2}" + ...
    "\right) e^{-2 r / a_{0}}$", ...
    Interpreter="latex",FontSize=20);