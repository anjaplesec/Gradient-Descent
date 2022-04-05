format longg
%zacetni primer za lazje razumevanje samega algoritma

%x_os = -5 + (5+5)*rand(20,1);
%y_os = (5+5)*rand(20,1);

%Zelim poiskati PREMICO, ki se bo najbolje prilegala tem podatkom (linearna
%regresija) s pomocjo gradientnega spusta

%zacetni podatki

learning_rate = 0.001
%izvedem algoritem -> za različno število iteracij
% for i  = [5 10]
%     [naklon, konst] = gradient_descent_premica(x_os, y_os,1,0,i,learning_rate);
%     hold on
% end
% figure
% for i  = [95 100]
%     [naklon, konst] = gradient_descent_premica(x_os, y_os,1,0,i,learning_rate);
%     hold on
% end

%izvedem algoritem -> za različne začetne pogoje 
figure
for i  = [10 90 200]
    [naklon, konst] = gradient_descent_premica(x_os, y_os,-20,50,i,learning_rate);
    hold on
end
figure
for i  = [10 90]
    [naklon, konst] = gradient_descent_premica(x_os, y_os,1,1,i,learning_rate);
    hold on
end
figure
for i  = [10 90 200]
    [naklon, konst] = gradient_descent_premica(x_os, y_os,-200,500,i,learning_rate);
    hold on
end
