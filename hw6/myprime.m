function is_prime = myprime(n)
	x = 2: n - 1;
	if(isempty(find(mod(n, x) == 0)))
		is_prime = true;
	else
		is_prime = false;
	end

