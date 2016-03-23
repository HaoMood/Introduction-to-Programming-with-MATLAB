function out = sort3(a, b, c)
	out = zeros(1, 3);
	if a >= b
		if b >= c
			out = [c, b, a];
		else
			if a >= c
				out = [b c a];
			else
				out = [b a c];
			end
		end
	else
		if a >= c
			out = [c, a, b];
		else
			if c >= b
				out = [a b c];
			else
				out = [a c b];
			end
		end
	end
