function H = hulk(v)
	H = zeros(size(v, 2), 3);
	H(:, 1) = v';
	H(:, 2) = v' .^ 2;
	H(:, 3) = v' .^ 3;
