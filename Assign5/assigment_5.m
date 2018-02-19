x = [ 0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0];
y = [10 10 16 24 30 38 52 68 82 96 123];
%%%%% (1)
figure,plot(x, y,'x', x,y);

%%%% (2)
p2 = polyfit(x, y, 2); % finds the coefficients of a polynomial
                     % of degree 2 that fits the data
y2 = polyval(p2, x); % polynomial is evaluated at all points in x , ypredicted
figure,plot(x, y,'x', x, y2) % plots data marked by x and fitted polynomial
xlabel('x'), ylabel('y'), grid
title('Polynomial curve fitting')
legend('Actual data', 'Fitted polynomial')

%%%% (3)
p3 = polyfit(x, y, 3) ;% finds the coefficients of a polynomial
                     % of degree 3 that fits the data
y3 = polyval(p3, x); % polynomial is evaluated at all points in x
figure,plot(x, y,'x', x, y3) % plots data marked by x and fitted polynomial
xlabel('x'), ylabel('y'), grid
title('Polynomial curve fitting')
legend('Actual data', 'Fitted polynomial')

p4 = polyfit(x, y, 4); % finds the coefficients of a polynomial
                     % of degree 4 that fits the data
y4 = polyval(p4, x); % polynomial is evaluated at all points in x
figure,plot(x, y,'x', x, y4) % plots data marked by x and fitted polynomial
xlabel('x'), ylabel('y'), grid
title('Polynomial curve fitting')
legend('Actual data', 'Fitted polynomial')

p8 = polyfit(x, y, 8); % finds the coefficients of a polynomial
                     % of degree 8 that fits the data
y8 = polyval(p8, x); % polynomial is evaluated at all points in x
figure,plot(x, y,'x', x, y8) % plots data marked by x and fitted polynomial
xlabel('x'), ylabel('y'), grid
title('Polynomial curve fitting')
legend('Actual data', 'Fitted polynomial')

%%%% (4)

figure,plot(x, y,'x', x, y2) % plots data marked by x and fitted polynomial
xlabel('x'), ylabel('y'), grid
title('Polynomial curve fitting')
legend('Actual data', 'Fitted polynomial')

figure,plot(x, y,'x', y, y2) % plots data marked by x and fitted polynomial
xlabel('y'), ylabel('yp'), grid
title('Polynomial curve fitting')
legend('True Value of y', 'Fitted polynomial')

error=y2(i)-y(i);
t=[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
figure,plot(x, y,'x', error,t) 
xlabel('error'), ylabel('t'), grid
title('Polynomial curve fitting')
legend('error value', 'time');

figure,plot(x, y,'x', x,y);

%%%% (5)
% to calculate the MAE, RMSE , NRMSE
n=length(y);
maxx=max(x);
minx=min(x);
MAE=0;
RMSE=0;
sumx=0;
sumy=0;
sumxy=0;
sumx2=0;
sumy2=0;
pxy=0;
n2=n*n;
for i=1:n
        MAE=MAE+abs(x(i)-y(i));
        RMSE=RMSE+((x(i)-y(i))^0.5);
        sumx=sumx+x(i);
        sumy=sumy+y(i);
        sumxy=sumxy+(x(i)*y(i));
        sumx2=sumx2+(x(i)*x(i));
        sumy2=sumy2+(y(i)*y(i));
        pxy=pxy+((x(i)-y(i))*(x(i)-y(i)));
end
MAE=MAE/n;
display(MAE);

RMSE=(RMSE/n)^0.5;
display(RMSE);

NRMSE=RMSE/(maxx-minx);
display(NRMSE);

RP=((n*sumxy)-(sumx*sumy))/((((n*sumx2)-(sumx*sumx))^0.5)*(((n*sumy2)-(sumy*sumy))^0.5));
display(RP);

RS=1-((6*pxy)/(n*(n2-1)));
display(RS);
