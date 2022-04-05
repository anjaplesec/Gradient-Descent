function [naklon, konst] = gradient_descent_premica(x,y,naklon0,konst0,T,eta)

syms konst naklon;
kvadrati_residualov =(y-(konst+naklon.*x)).^2;

vsota_kvadratov_residualov = 0;
for i = 1:length(x)
    vsota_kvadratov_residualov = vsota_kvadratov_residualov + kvadrati_residualov(i);
end

%graf residualov -> loss function


odvod_naklon = matlabFunction(diff(vsota_kvadratov_residualov,naklon));
odvod_konst = matlabFunction(diff(vsota_kvadratov_residualov,konst));

naklon = zeros(1,T);
konst =  zeros(1,T);
naklon(1) = naklon0;
konst(1) = konst0;

for i = 1:T-1
    vred_odv1 = odvod_naklon(konst(i),naklon(i));
    vred_odv2 = odvod_konst(konst(i),naklon(i));
    
    step_size_naklon = vred_odv1 * eta;
    step_size_kosnt = vred_odv2 * eta;

    naklon(i+1) = naklon(i) - step_size_naklon;
    konst(i+1) = konst(i) - step_size_kosnt;
end

naklon;
konst;

%RISANJE
%risanje zacetnih podatkov
scatter(x,y,'filled','blue')
grid on
hold on
axis equal
hold on

%narišemo končno premico
x_koor = linspace(min(x),max(x));
premica = @(x) naklon(end) .* x + konst(end);
plot(x_koor,premica(x_koor), 'LineWidth',1 )
end