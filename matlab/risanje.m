function risanje(y,x0,learning_rate,T,tol,a,b,c,d,stevila)
% Funkcija RISANJE nam izriše graf naše funckije y, vsa števila
% iz seznama rešitev ter premice med njimi.
% y... funckija ene spremenljivke, katere minimum iščemo
% x0 ... začetni približek koordinate x
% learning_rate ... učna stopnja - pove nam velikost koraka
% T ... kdaj se naj algoritem ustavi
% tol ... toleranca
% a,b ... predstavljata interval risanja v smeri x
% c,d ... predstavljata interval risanja v smeri y
% stevila ... 1: dodamo števila k točkami, 0: sicer

res = gradient_descent(y,x0,learning_rate,T,tol);
dolz = length(res);

%narišemo graf naše funkcije
figure
x = linspace(a,b,100);
Y = matlabFunction(y);
plot(x,Y(x))
ylim([c d]);
hold on

%narišemo točke, ki nam jih da res
for i = 1:dolz
    scatter(res(i),Y(res(i)),'filled')
end

%te točke povežemo
for i = 2:dolz
    plot([res(i-1) res(i)],[Y(res(i-1)) Y(res(i))], 'red')
end

%Dodamo števila zravne točk, za lažjo predstavo
switch stevila
    case 1
        for i = 1:4
            b = num2str(i); c = cellstr(b);
            text(res(i)+0.1,Y(res(i))+0.1, c);
        end
    otherwise
        disp('')
end

%dodamo legendo
title(['learning rate = ',num2str(learning_rate), ', stevilo iteracij = ', num2str(dolz), ...
    ', rezultat = ', num2str(round(res(end),4)), ', x0 = ', num2str(x0)])

end
