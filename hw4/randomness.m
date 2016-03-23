function A = randomness(limit, n, m)
	A = floor(rand(n, m) * limit + ones(n, m));
