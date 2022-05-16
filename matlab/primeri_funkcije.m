%V tej datoteki se nahajajo izračuni in grafi, ki sem jih vključila v
%seminarsko nalogo

%%%%%%%%%%%%%%%%%% 
% FUNKCIJE ENE SPREMENLJIVKE

%%%%%%%%%%%%%%%%%%
% Primer x^2
%%%%%%%%%%%%%%%%%%

% syms x
% y = x^2;  %naša funkcija
% x0 = 4;  %izberemo si poljuben x0 -> začetni pogoj
% T = 10;
% tol = 0.0001;
% 
% %spreminjamo learning rate
% for lr = [0.1 0.3 0.7 0.9]
%     risanje(y,x0,lr,T,tol,-6,6,0,30,0);
% end
% 
% %Primerem lr je tisti, pri katerem graf najhitreje skonvergira k 0
% for lr = [0.01 0.1 0.3 0.7 0.9]
%     risanje_cost_function(y,x0,lr,20,0.0001)
% end

%%%%%%%%%%
%%%%Zakaj je za lr = 0.3 in 0.7 rezultat enak? zaradi simetrične funkcije?

%%%%%%%%%%%%%%%%%%
% Primer x^2/1000
%%%%%%%%%%%%%%%%%%

% syms x
% y = x^2/1000;  %naša funkcija
% x0 = 4;    %izberemo si poljuben x
% lr = 0.8; %izberemo primeren learning rate
% T = 1000;
% tol = 0.0001;
% gradient_descent(y,x0,lr,T,tol);
% risanje(y,x0,lr,T,tol,-5,10,0,0.09,0);


%%%%%%%%%%%%%%%%%%
% Primer x^4-2x^3+2
%%%%%%%%%%%%%%%%%%

% syms x
% y = x^4-2*x^3+2;  %naša funkcija
% T = 100;
% tol = 0.0001;
% 
% %spreminjamo x in lr
% x0 =2;
% lr = 0.1;
% res = gradient_descent(y,x0,lr,T,tol);
% risanje(y,x0,lr,T,tol,-1,2.5,0,4,1);



%%%%%%%%%%%%%%%%%% 
% FUNKCIJE VEČ SPREMENLJIVK


%%%%%%%%%%%%%%%%%%
% Primer x^2+y^2
%%%%%%%%%%%%%%%%%%

% syms x y
% f =  x^2+y^2
% x0 = 4;
% y0 = 4;
% learning_rate = 0.8;
% T = 101;
% tol = 0.001;
% 
% res=gradient_descent_vecspr(f,x0,y0,learning_rate,T,tol);
% risanje_vecspr(f,x0,y0,learning_rate,T,tol,-4,4,-4,4)



%%%%%%%%%%%%%%%%%%
% Primer sin(x.^2/2-y.^2/4+3)*cos(2*x+1-exp(y))
%%%%%%%%%%%%%%%%%%

syms x y
f =  sin(x.^2/2-y.^2/4+3)*cos(2*x+1-exp(y))
x0 = 0.5;
y0 = 0.5;
learning_rate = 0.6;
T = 100;
tol = 0.001;

res=gradient_descent_vecspr(f,x0,y0,learning_rate,T,tol);

risanje_vecspr(f,x0,y0,learning_rate,T,tol,-2,3,-4,3)

