function A = bell(n)
	if n <= 0 || uint32(n) ~= n
		A = [];
		return;
	end

	if n == 1
		A = 1;
		return;
	end

	A = zeros(n);
	A(1, 1) = 1;
	for i = 2: n;
		A(i, 1) = A(1, i - 1);
		for j = 1: i - 1;
			A(i - j, j + 1) = A(i - j + 1, j) + A(i - j, j);
		end
	end
