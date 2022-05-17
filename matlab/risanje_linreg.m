function risanje_linreg(x,y,naklon0,konst0,T,lr)
% funkcija RISANJE_LINREG nam nariše graf začetnih podatkov in premice, ki
% jo določimo s pomočjo funckije gradient_descent_linreg
% x... dani podatki
% y... dani podatki
% naklon0 ... začetni približek za naklon
% konst0 ... začetni približek za konst
% T ... čas, ko se naj algoritem ustavi(število iteracij)
% lr ... učna stopnja

res = gradient_descent_linreg(x,y,naklon0,konst0,T,lr);

%risanje zacetnih podatkov
plot(x, y, '.', 'MarkerSize', 8,'Color',[0,0.7,0.9]);
grid on
hold on

%narišemo končno premico
x_koor = linspace(min(x),max(x));
premica = @(x) res(end,1) .* x + res(end,2);
plot(x_koor,premica(x_koor), 'LineWidth',1 )


%risanje naklona in konst
% [X,Y] = meshgrid(naklon,konst);
% kvadrati_residualov =(Y-(konst+naklon.*X)).^2;
% figure
% surf(X, Y, kvadrati_residualov)

end