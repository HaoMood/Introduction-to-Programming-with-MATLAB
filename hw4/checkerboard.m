function board = checkerboard(n, m)
	board = zeros(n, m);
	board(1: 2: end, 1: 2: end) =  1;
	board(2: 2: end, 2: 2: end) =  1;
