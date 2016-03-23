function B = divvy(A, k)
	idx = logical(mod(A, k) == 0);
	B = zeros(size(A));
	B(idx) = A(idx);
	B(~idx) = A(~idx) * k;
