function idx = saddle(A)
	idx = [];
	rows = max(A, [], 2);
	cols = min(A, [], 1);
	for j = 1: size(A, 2)
		for	i = 1: size(A, 1)
			if A(i, j) == rows(i) && A(i, j) == cols(j)
				idx = [idx; i, j];
			end
		end
	end
