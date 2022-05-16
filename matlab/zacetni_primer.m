format longg
%zacetni primer za lazje razumevanje samega algoritma
data = load('podatki.txt');
x = data(:, 1); 
y = data(:, 2);
m = length(y); 
figure; 
plot(x, y, 'rx', 'MarkerSize', 10); 
ylabel('Dobicek v €10,000-ih');
xlabel('Stevilo prebivalcev v 10,000-ih'); 

%Zelim poiskati PREMICO, ki se bo najbolje prilegala tem podatkom (linearna
%regresija) s pomocjo gradientnega spusta

%zacetni podatki

learning_rate = 0.0001;
%izvedem algoritem -> za različno število iteracij
for i  = [5 10]
    [naklon, konst] = gradient_descent_premica(x, y,0,0,i,learning_rate);
    hold on
end
legend('','iter = 5','','iter = 10')
% figure
% for i  = [95 100]
%     [naklon, konst] = gradient_descent_premica(x_os, y_os,1,0,i,learning_rate);
%     hold on
% end
% legend('','iter = 95','','iter = 10')
% %izvedem algoritem -> za različne začetne pogoje 
% figure
% for i  = [90 200]
%     [naklon, konst] = gradient_descent_premica(x_os, y_os,-20,50,i,learning_rate);
%     hold on
% end
% legend('','iter = 90','','iter = 200')
% figure
% for i  = [10 90]
%     [naklon, konst] = gradient_descent_premica(x_os, y_os,1,1,i,learning_rate);
%     hold on
% end
% legend('','iter = 10','','iter = 90')
% figure
% for i  = [90 200]
%     [naklon, konst] = gradient_descent_premica(x_os, y_os,-200,500,i,learning_rate);
%     hold on
% end
% legend('','iter = 90','','iter = 200')

