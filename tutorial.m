y = [12,10,-3];
X = [1,2,3 ; 12 , 13 ,14 ; 0 , 0 , 0 ]
x = eye(3)
[a , b] = eig(X)
c = rank(X)
d = inv(x)
X22 = X(1:2,2:3)
X1 = X22(1:1,1:2)
Y = [y' , y' * 2 , y' * 3 ]
Y = Y .* 2
Y = Y + 2*Y - Y 
raO = eye(3) * rand()
Y =  Y + raO

if c == 2 
    Y(c,2) = Y(c,3) + 12.12312 ; 
elseif c > 2
      Y(c,2) = Y(c,3) - 12.12312 ; 
else 
   Y(c,2) = Y(c,3) .* 12.12312 ;    
end

x = 2 ; y = 3 ; 

switch(x)
    case x == y 
        disp('LLLLOOLLLL');
    case x > y 
        disp('afdasd');
    otherwise
        disp('adfadsfasdfaaaaaaaa');
end

for x = 0 : 0.0001 : 1 
    disp(x);
end

V = zeros(5,1)
V(4,1) = 100 






