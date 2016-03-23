function w = replace(c, c1, c2)
	for i = 1: max(size(c))
		w{i} = c{i};
		for j = 1: size(c{i}, 2)
			if c{i}(j) == c1
				w{i}(j) = c2;
			end
		end
	end
