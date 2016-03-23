function w = censor(c, str)
	w = [];
	cnt = 1;
	for i = 1: max(size(c))
		if isempty(findstr(c{i}, str))
			w{cnt} = c{i};
			cnt = cnt + 1;
		end
	end
