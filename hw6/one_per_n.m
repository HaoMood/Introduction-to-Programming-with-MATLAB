function n = one_per_n(x)
	s = 0;
	for n = 1: 10000
		s = s + 1 / n;
		if s >= x
			return;
		end
	end
	n = -1;
	return;
