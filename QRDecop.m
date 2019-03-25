%QR Decomposition
function[Q, R] = QRDecop(H, m, n)
    Q = zeros(m, n);
    R = zeros(n, n);
    vec = zeros(m, 1);
    for j = 1: n
        vec = H(:, j);
        for i = 1: j-1
            R(i,j) = dot(Q(:, i), H(:, j));
            vec = vec - R(i,j)*Q(:,i);
        end
        R(j,j) = norm(vec);
        Q(:,j) = vec/R(j,j);
    end
end