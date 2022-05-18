% datoteka v kateri so poračunani in izrisani grafi za linearno regresijo
format longg

data = load('podatki.txt');
x = data(:, 1); 
y = data(:, 2);
m = length(y); 
tol = 0.00001;
lr = 0.0001;

%%%%%%%%%%%%%%
% PRIMER 1
%%%%%%%%%%%%%%

%izvedem algoritem -> za različno število iteracij
for i  = [2 7]
    risanje_linreg(x,y,0,0,i,lr,tol)
    legend('','iter = 2','','iter = 7')
    title('Razlika glede na izbrano število iteracij')
    hold on
end

figure
for i  = [10 15]
    risanje_linreg(x,y,0,0,i,lr,tol)
    legend('','iter = 10','','iter = 15')
    title('Razlika glede na izbrano število iteracij')
    hold on
end


%%%%%%%%%%%%%%
% PRIMER 2
%%%%%%%%%%%%%%

%izvedem algoritem -> za različne začetne pogoje 
figure
for i  = [90 200 800]
    risanje_linreg(x,y,-20 ,50,i,lr,tol);
    hold on
end
legend('','iter = 90','','iter = 200','','iter = 800')
title('Razlika glede na izbrane začetne pogoje')

figure
for i  = [10 90]
    risanje_linreg(x,y,1,1,i,lr,tol);
    hold on
end
legend('','iter = 10','','iter = 90')
title('Razlika glede na izbrane začetne pogoje')

figure
for i  = [90 200 600]
    risanje_linreg(x,y,20,-50,i,lr,tol);
    hold on
end
legend('','iter = 90','','iter = 200','','iter = 600')
title('Razlika glede na izbrane začetne pogoje')


%%%%%%%%%%%%%%
% PRIMER 3
%%%%%%%%%%%%%%

%Razlika glede na izbrano učno stopnjo
figure
for i  = [0.0001 0.00001 0.0000001]
    risanje_linreg(x,y,1,1,100,i,tol);
    hold on
end
legend('','lr = 0.0001','','lr = 0.00001','','lr = 0.0000001')
title('Razlika glede na izbrano učno stopnjo')


%%%%%%%%%%%%%%
% PRIMER 4
%%%%%%%%%%%%%%

%kako izbrati optimalno oz ustrezno učno stopnjo?
figure
for lr = [0.0001 0.00001]
    risanje_lr(x,y,0,0,10000,lr,tol)
end