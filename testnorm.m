%T = eye(4, 4);
%norm_T = norm(T, 'fro');
%Initialize random Matrix H 
m = 5;
n = 3;
%Element of H and Z are in the range(-1,1)
H = 2 * rand(m, n) - 1;
Z = 2 * rand(m, 1) - 1;
D = 10 * eye(m, n);
%Make sure H is diagonal dominant
H = H + D;
A = H' * H;
b = H' * Z;
[U, LAM, V] = SVDDecop(A, H, m, n);
res = U * LAM * V';
disp(H)
disp(res)
%Calculate x = V * LAM * U' * Z
LAM_x = zeros(n, n);
for i = 1:n
    LAM_x(i, i) = 1/LAM(i, i);
end
disp(LAM);
disp(LAM_x)
y1 = U'*Z;
y2 = LAM_x * y1;
svdx = V*LAM_x*U'*Z;
%Calculate Frobenius norm of H*x - Z
Err_svdx = A*svdx - b;
norm_Err_svdx = norm(Err_svdx, 'fro');
disp(norm_Err_svdx)