function w = replace_me(v,a,b,c)
	if nargin <= 2
		b = 0;
	end
	if nargin <= 3
		c = b;
	end

	idx = find(v == a);
	if isempty(idx)
		w = v;
		return;
	end

	w = zeros(1, size(idx, 2) + size(v, 2));

	j = 1;
	for i = 1: size(v, 2)
		if(v(i) ~= a)
			w(j) = v(i);
			j = j + 1;
		else
			w(j) = b;
			j = j + 1;
			w(j) = c;
			j = j + 1;
		end
	end


