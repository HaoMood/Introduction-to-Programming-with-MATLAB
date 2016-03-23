function v = square_wave(n)
	cnt = 1;
	for x = 0: 4 * pi / 1000: 4 * pi
		v(cnt) = sum(sin((1: 2: 2 * n - 1) * x) ./ (1: 2: 2 * n - 1));
		cnt = cnt + 1;
	end
