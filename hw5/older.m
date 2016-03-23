function first_is_older = older(y1, m1, d1, y2, m2, d2)
	if y1 < y2
		first_is_older = 1;
		return;
	end
	if y1 > y2
		first_is_older = -1;
		return;
	end

	if m1 < m2
		first_is_older = 1;
		return;
	end
	if m1 > m2
		first_is_older = -1;
		return;
	end

	if d1 < d2
		first_is_older = 1;
		return;
	end
	if d1 > d2
		first_is_older = -1;
		return;
	end

	first_is_older = 0;

