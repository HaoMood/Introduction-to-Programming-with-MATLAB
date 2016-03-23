function dif = neighbor(v)
	[m, n] = size(v);
	if ~isvector(v) || m ~= 1 || n < 1
		dif = [];
		return;
	end

	v1 = v(2: end);
	v2 = v(1: end - 1);
	dif = abs(v1 - v2);
