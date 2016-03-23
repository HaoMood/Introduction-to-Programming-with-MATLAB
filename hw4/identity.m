function A = identity(n)
	A = zeros(n);
	A(1: n + 1: n ^ 2) = 1;
