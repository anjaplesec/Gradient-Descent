function risanje_cost_function(y,x0,learning_rate,T,tol)
% Funkcija RISANJE_COST_FUNCTION nam izriše graf naše stroškovne funckije
% y... funckija ene spremenljivke, katere minimum iščemo
% x0 ... začetni približek koordinate x
% learning_rate ... učna stopnja - pove nam velikost koraka
% T ... kdaj se naj algoritem ustavi
% tol ... toleranca

res = gradient_descent(y,x0,learning_rate,T,tol);
dolz = length(res);

%risanje stroškovne funkcije
x_res = 1:dolz;
hold on
plot(x_res,res)
axis equal

%dodajanje legende in naslova
legend('lr = 0.1','lr = 0.3','lr = 0.4')
title(['Stroskovna funkcija, ', 'tol = ', num2str(tol)])

end