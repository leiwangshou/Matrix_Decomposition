%Cholesky Decomposition
function G = CholeskyDecop(A, n)
    G = zeros(n, n)
    for j = 1:n
        sum = 0;
        for k = 1:j-1
            sum = sum + G(j,k)^2;
        end
        G(j,j) = sqrt(A(j,j)-sum); %calculate diagonal elements
        for i = j+1:n
            sum = 0;
            for k = 1:j-1
                sum = sum + G(i,k)*G(j,k);
            end
            G(i,j) = (A(j,i) - sum)/G(j,j);
        end
    end   
end