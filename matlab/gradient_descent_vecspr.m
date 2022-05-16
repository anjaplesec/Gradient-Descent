function res = gradient_descent_vecspr(f,x0,y0,learning_rate,T,tol)
% Funkcija GRADIENT_DESCENT_VECSPR nam vrne seznam števil,ki predstavljajo
% x in y koordinate za minimum v vsakem koraku iteracije. Zadnji par števil
% iz tega seznama predstavlja minimum naše funkcije f.
% f... funckija dveh spremenljivk, katere minimum iščemo
% x0 ... začetni približek koordinate x
% y0 ... začetni približek koordinate y
% learning_rate ... učna stopnja - pove nam velikost koraka
% T ... kdaj se naj algoritem ustavi
% tol... toleranca
syms x y
grad = matlabFunction(gradient(f,[x,y])); %izračunamo gradient(odvod) naše funkcije
res = zeros(T,2);
res(1,1) = x0;
res(1,2) = y0;
for i = 1:T
    raz = learning_rate .* grad(res(i,1),res(i,2))
    if abs(raz)<tol
        break
    end
    res(i+1,:) = res(i,:) - raz';
end
res = res(1:end-1,:);

%odstranimo člene NaN,Inf in 0 iz res
for i = 1:T
    if isnan(res(end))
        res = res(1:end-1,:);
    elseif isinf(res(end))
         res = res(1:end-1,:);
    elseif any(res(end) == 0)
         res = res(1:end-1,:);
    else
        res = res(1:end,:);
    end
end

end
