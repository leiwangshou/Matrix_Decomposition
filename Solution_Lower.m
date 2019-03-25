% L*y = b, solve this to get y
function[y] = Solution_Lower(L, b, n)
    y = zeros(n, 1);
    for i = 1:n
        sum = 0;
        for j = 1:i-1
            sum = sum + L(i,j)*y(j,1);
        end
        y(i,1) = (b(i,1) - sum)/L(i,i);
    end
end
