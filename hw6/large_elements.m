function idx = large_elements(X)
	idx = [];
	for i = 1: size(X, 1)
		for j = 1: size(X, 2)
			if X(i, j) > (i + j)
				idx = [idx; i, j];
			end
		end
	end
