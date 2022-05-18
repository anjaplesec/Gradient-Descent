function risanje_lr(x,y,naklon0,konst0,T,lr,tol)
% funkcija RISANJE_LR nam nariše graf za lažjo določitev ustrezne 
% učne stopnje
% x... dani podatki
% y... dani podatki
% naklon0 ... začetni približek za naklon
% konst0 ... začetni približek za konst
% T ... čas, ko se naj algoritem ustavi(število iteracij)
% lr ... učna stopnja
% tol ... toleranca za ustavitev algoritma

res = gradient_descent_linreg(x,y,naklon0,konst0,T,lr,tol);
kvadrati_residualov =(y-(res(2)+res(1).*x)).^2;
dolz = length(kvadrati_residualov);

%risanje stroškovne funkcije
x_res = 1:dolz;
hold on
plot(x_res,kvadrati_residualov)

%dodajanje legende in naslova
%legend( 'lr = 0.0001','lr = 0.00001','lr = 0.3','lr = 0.7','lr = 0.9')
title('Stroskovna funkcija')

end