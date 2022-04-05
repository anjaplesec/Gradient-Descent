format longg
%zacetni primer za lazje razumevanje samega algoritma

% x_os = -5 + (5+5)*rand(20,1);
% y_os = (5+5)*rand(20,1);

%shranla podatke, da so vedno isti
%save('x_y.mat','x_os','y_os')



%Zelim poiskati PREMICO, ki se bo najbolje prilegala tem podatkom (linearna
%regresija) s pomocjo gradientnega spusta

%zacetni podatki

learning_rate = 0.001;
%izvedem algoritem -> za različno število iteracij
% for i  = [5 10]
%     [naklon, konst] = gradient_descent_premica(x_os, y_os,1,0,i,learning_rate);
%     hold on
% end
% legend('','iter = 5','','iter = 10')
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

