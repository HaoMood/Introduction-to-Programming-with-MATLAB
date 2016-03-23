function name = integerize(A)
	max_val = max(A(:));
	if max_val <= intmax('uint8')
		name = 'uint8';
		return;
	end
	if max_val <= intmax('uint16')
		name = 'uint16';
		return;
	end
	if max_val <= intmax('uint32')
		name = 'uint32';
		return;
	end
	if max_val <= intmax('uint64')
		name = 'uint64';
		return;
	end

	name = 'NONE';
	return;
