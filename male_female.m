A1= input('Enter the value of A: ') ;
A2=input('Enter the value of ~A: ') ; 
A1andX1 = input('Enter the value of A&X : ') ;
A1andX2 = input('Enter the value of A&~X : ') ; 
A2andX1 = input('Enter the value of ~A&X : ') ;
A2andX2 = input('Enter the value of ~A&~X : ') ;
S=input('Enter  number of samples :  ');

p_of_A1= A1/S;
p_of_A2= A2/S;
p_of_A1andX1 = A1andX1/S;
p_of_A1andX2 = A1andX2/S; 
p_of_A2andX1 = A2andX1/S;
p_of_A2andX2 = A2andX2/S;
%Conditional Probability 
%P(X|A)
p_X1_A1 =  p_of_A1andX1 / p_of_A1 ; 
%P(X|~A)
p_X1_A2 =  p_of_A2andX1 / p_of_A2 ;
%P(~X|A)
p_X2_A1 =  p_of_A1andX2 / p_of_A1 ;
%P(~X|~A)
p_X2_A2 =  p_of_A2andX2 / p_of_A2 ; 

%Posterior Probability
 
%P(A|X)
pPos_A1_X1 = ( p_X1_A1 * p_of_A1)/(( p_X1_A1 * p_of_A1)+( p_X1_A2 * p_of_A2)) ;
%P(~A|X)
pPos_A2_X1 = ( p_X1_A2 * p_of_A2)/(( p_X1_A2 * p_of_A2)+( p_X1_A1 * p_of_A1)) ;
%P(A|~X)
pPos_A1_X2 = ( p_X2_A1 * p_of_A1)/(( p_X2_A1 * p_of_A1)+( p_X2_A2 * p_of_A2)) ;
%P(~A|~X)
pPos_A2_X2 = ( p_X2_A2 * p_of_A2)/(( p_X2_A2 * p_of_A2)+( p_X2_A1 * p_of_A1)) ;

disp('P(A|X) = ' );
disp(pPos_A1_X1);
disp('P(~A|X) = ') ;
disp(pPos_A2_X1);
disp ('P(A|~X) = '); 
disp(pPos_A1_X2);
disp('P(~A|~X) = ' ) 
disp( pPos_A2_X2 );