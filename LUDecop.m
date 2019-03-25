%LU Decomposition
function [L, U] = LUDecop(A, n)
    L = zeros(n, n);
    U = eye(n, n);
    for r = 1:n
        for i = r: n
            sum = 0;
            for j = 1:r-1
                sum = sum + L(i,j)*U(j,r);
            end
            L(i,r) = (A(i,r)-sum)/U(r,r); %compute L
        end
        for i = r+1:n
            sum = 0;
            for j = 1:r-1
                sum = sum + L(r,j)*U(j,i);
            end
            U(r,i) = (A(r,i) - sum)/L(r,r); %compute U
        end
    end
end

