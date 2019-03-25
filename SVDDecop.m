%SVD Decomposition
function[U, LAM, V] = SVDDecop(A, H, m, n)
    U = zeros(m, n);
    LAM = zeros(n, n);
    V = zeros(n, n);
    [V, LAM] = eig(A);
    for i = 1:n
        LAM(i,i) = sqrt(LAM(i,i));
        U(:, i)= (1/LAM(i,i)) * H * V(:,i);
    end
end