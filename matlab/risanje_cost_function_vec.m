function risanje_cost_function_vec(f,x0,y0,learning_rate,T,tol)
% Funkcija RISANJE_COST_FUNCTION_VEC nam izriše graf naše stroškovne funckije
% y... funckija več spremenljivk, katere minimum iščemo
% x0 ... začetni približek koordinate x
% learning_rate ... učna stopnja - pove nam velikost koraka
% T ... kdaj se naj algoritem ustavi
% tol ... toleranca

res = gradient_descent_vecspr(f,x0,y0,learning_rate,T,tol);
dolz = length(res);

%risanje stroškovne funkcije
x_res = 1:dolz;
hold on
plot3(x_res,res(:,1),res(:,2))

%dodajanje legende in naslova
legend('lr = 0.01','lr = 0.1','lr = 0.4')
title(['Stroskovna funkcija, ', 'tol = ', num2str(tol)])

end