function res= gradient_descent_linreg(x,y,naklon0,konst0,T,lr,tol)
% funkcija GRADIENT_DESCENT_LINREG nam vrne vrednosti naklona in konstante,
% ki jivu potrebujemo za določitev premice(y = naklon * x + konst), 
% ki se najbolje prilega danim podatkom.
% x... dani podatki
% y... dani podatki
% naklon0 ... začetni približek za naklon
% konst0 ... začetni približek za konst
% T ... čas, ko se naj algoritem ustavi(število iteracij)
% lr ... učna stopnja
% tol ... toleranca za ustavitev algoritma


syms konst naklon;
kvadrati_residualov =(y-(konst+naklon.*x)).^2;

vsota_kvadratov_residualov = 0;
for i = 1:length(x)
    vsota_kvadratov_residualov = vsota_kvadratov_residualov + kvadrati_residualov(i);
end

%računanje gradienta
odvod_naklon = matlabFunction(diff(vsota_kvadratov_residualov,naklon));
odvod_konst = matlabFunction(diff(vsota_kvadratov_residualov,konst));

res = zeros(T,2);
res(1,1) = naklon0;
res(1,2) = konst0;
for i = 1:T-1
    vred_odv1 = odvod_naklon(res(i,2),res(i,1));
    vred_odv2 = odvod_konst(res(i,2),res(i,1));

    vred_odv = [vred_odv1 vred_odv2];

    step_size = vred_odv .* lr;
    if abs(step_size)<tol
        break
    end

    res(i+1,:) = res(i,:)-step_size;
end
end