function A = sparse_array_in(filename)
	fd = fopen(filename, 'r');
	if fd < 0
		A = [];
		return;
	end

	m = fread(fd, 1, 'uint32');
	n = fread(fd, 1, 'uint32');
	k = fread(fd, 1, 'uint32');
	A = zeros(m, n);
	for cnt = 1: k
		i = fread(fd, 1, 'uint32');
		j = fread(fd, 1, 'uint32');
		A(i, j) = fread(fd, 1, 'double');
	end

	fclose(fd);
