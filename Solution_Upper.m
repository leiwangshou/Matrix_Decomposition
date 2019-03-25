%U*x = y, solve this to get x
function[x] = Solution_Upper(U, y, n)
    x = zeros(n, 1);
    for i = n:-1:1
       sum = 0;
       for j = i+1:n
           sum = sum + U(i,j)*x(j,1)
       end
       x(i,1) = (y(i,1) - sum)/U(i,i); 
    end
end