function safe = queen_check(board)
	safe = true;
	[rows, cols] = find(board == 1);
	if size(rows, 1) == 1
		return;
	end

	for i = 1: size(rows, 1)
		if ~isempty(find(rows(1: i - 1) == rows(i))) || ~isempty(find(cols(1: i - 1) == cols(i)))
			safe = false;
			return;
		end
		div = (rows(i) * ones(i - 1, 1) - rows(1: i - 1)) ...
			./ (cols(i) * ones(i - 1, 1) - cols(1: i - 1));
		if ~isempty(find(div == 1)) || ~isempty(find(div == -1))
			safe = false;
			return;
		end
	end
	return;
