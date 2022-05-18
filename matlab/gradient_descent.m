function res = gradient_descent(y,x0,learning_rate,T,tol)
% Funkcija GRADIENT_DESCENT_VECSPR nam vrne seznam števil,ki predstavljajo
% x koordinate za minimum v vsakem koraku iteracije. Zadnje število iz tega
% seznama predstavlja minimum naše funkcije y.
% y... funckija ene spremenljivke, katere minimum iščemo
% x0 ... začetni približek koordinate x
% learning_rate ... učna stopnja - pove nam velikost koraka
% T ... kdaj se naj algoritem ustavi
% tol... toleranca

dy = matlabFunction(diff(y)); %izračunamo gradient(odvod) naše funkcije
res = zeros(1,T);
res(1) = x0;
for i = 1:T
    raz = learning_rate .* dy(res(i));
    if abs(raz)<tol
        break
    end
    if raz == x0
        error('To ni ustrezna učna stopnja!!')  
    end
    res(i+1) = res(i) - raz;
end
res = res(1:end-1);

%odstranimo člene NaN,Inf in 0 iz res
for i = 1:T
    if isnan(res(end))
        res = res(1:end-1);
    elseif isinf(res(end))
         res = res(1:end-1);
    elseif any(res(end) == 0)
         res = res(1:end-1);
    else
        res = res(1:end);
    end
end
end
