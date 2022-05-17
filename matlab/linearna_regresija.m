format longg
%linearna regresija
data = load('podatki.txt');
x = data(:, 1); 
y = data(:, 2);
m = length(y); 
%plot(x, y, 'o', 'MarkerSize', 5); 

%Zelim poiskati PREMICO, ki se bo najbolje prilegala tem podatkom (linearna
%regresija) s pomocjo gradientnega spusta

lr = 0.0001;
res = gradient_descent_linreg(x, y,0,0,10,lr);

%%%%%%%%%%%%%%
% PRIMER 1
%%%%%%%%%%%%%%

%izvedem algoritem -> za različno število iteracij
% for i  = [2 7]
%     risanje_linreg(x,y,0,0,i,lr)
%     legend('','iter = 2','','iter = 7')
%     title('Razlika glede na izbrano število iteracij')
%     hold on
% end

% figure
% for i  = [10 15]
%     risanje_linreg(x,y,0,0,i,lr)
%     legend('','iter = 10','','iter = 15')
%     title('Razlika glede na izbrano število iteracij')
%     hold on
% end


%%%%%%%%%%%%%%
% PRIMER 2
%%%%%%%%%%%%%%

%izvedem algoritem -> za različne začetne pogoje 
% figure
% for i  = [90 200 500]
%     risanje_linreg(x,y,-20 ,50,i,lr);
%     hold on
% end
% legend('','iter = 90','','iter = 200','','iter = 500')
% title('Razlika glede na izbrane začetne pogoje')

% figure
% for i  = [10 90]
%     risanje_linreg(x,y,1,1,i,lr);
%     hold on
% end
% legend('','iter = 10','','iter = 90')
% title('Razlika glede na izbrane začetne pogoje')

% figure
% for i  = [90 200 600]
%     risanje_linreg(x,y,20,-50,i,lr);
%     hold on
% end
% legend('','iter = 90','','iter = 200','','iter = 600')
% title('Razlika glede na izbrane začetne pogoje')


%%%%%%%%%%%%%%
% PRIMER 3
%%%%%%%%%%%%%%

%Razlika glede na izbrano učno stopnjo

figure
for i  = [0.0001 0.00001 0.0000001]
    risanje_linreg(x,y,1,1,100,i);
    hold on
end
legend('','lr = 0.0001','','lr = 0.00001','','lr = 0.0000001')
title('Razlika glede na izbrano učno stopnjo')
