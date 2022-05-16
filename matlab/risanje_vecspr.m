function risanje_vecspr(f,x0,y0,learning_rate,T,tol,a,b,c,d)
% Funkcija RISANJE_VECSPR nam izriše graf naše funckije f, vse pare števil
% iz seznama rešitev ter premice med njimi.
% f... funckija dveh spremenljivk, katere minimum iščemo
% x0 ... začetni približek koordinate x
% y0 ... začetni približek koordinate y
% learning_rate ... učna stopnja - pove nam velikost koraka
% T ... kdaj se naj algoritem ustavi
% tol ... toleranca
% a,b ... predstavljata interval risanja v smeri x
% c,d ... predstavljata interval risanja v smeri y

res = gradient_descent_vecspr(f,x0,y0,learning_rate,T,tol);
dolz = length(res);

%narišemo graf naše funkcije
[X,Y] = meshgrid(a:0.05:b,c:0.05:d);
Z = matlabFunction(f);
s = surf(X,Y,Z(X,Y),'FaceAlpha',0.5);
hold on
s.EdgeColor = 'none'; 

%narišemo točke, ki nam jih da res
for i = 1:dolz
    plot3(res(i,1),res(i,2),Z(res(i,1),res(i,2)),'.','markersize', 20,'Color','r')
end

%te točke povežemo s premicami
for i = 2:dolz
    plot3([res(i-1,1) res(i,1)],[res(i-1,2); res(i,2)], [Z(res(i-1,1),res(i-1,2)); Z(res(i,1),res(i,2))],'red','LineWidth',1.5)
end

%dodamo legendo
title(['learning rate = ',num2str(learning_rate), ', stevilo iteracij = ', num2str(dolz), ...
    ', [x0, y0] = [', num2str(x0), ', ',num2str(y0),']', ', rezultat = [ ', num2str(round(res(end,1),4)), ', ',num2str(round(res(end,2),4)),']'])

end