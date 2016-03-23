function sumA = halfsum(A)
	sumA = 0;
	for i = 1: size(A, 1)
		sumA = sumA + sum(A(i, i: end));
	end
