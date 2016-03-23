function out = classify(x)
	[a b] = size(x);
	if a == 0 || b == 0
		out = -1;
		return;
	end
	if a == 1 && b == 1
		out = 0;
		return;
	end
	if a == 1 || b == 1
		out = 1;
		return;
	end
	if a > 1 && b > 1
		out = 2;
		return;
	end
