function p = prime_pairs(n)
	prime_numbers = primes(n + 100000);
	for p = primes(100000)
		if ~isempty(find(prime_numbers == n + p))
			return;
		end
	end
	p = -1;
	return;
