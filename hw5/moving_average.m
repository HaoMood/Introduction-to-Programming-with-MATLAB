function avg = moving_average(x)
	persistent buf;
	persistent idx;
	persistent fill_cycle;
	if isempty(buf)
		buf = zeros(1, 25);
		buf(1) = x;
		idx = 1;
		fill_cycle = 0;
		avg = x;
	else
		idx = idx + 1;
		if idx == 26
			idx = 1;
			fill_cycle = 1;
		end
		buf(idx) = x;
		if fill_cycle == 1
			avg = sum(buf) / 25;
		else
			avg = sum(buf(1: idx)) / idx;
		end
	end

