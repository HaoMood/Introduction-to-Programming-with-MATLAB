function ret = sparse_array_out(A, filename)
	fd = fopen(filename, 'w+');
	if fd < 0
		error('error opening file %s\n', filename);
		ret = false;
		return;
	end

	fwrite(fd, size(A, 1), 'uint32');
	fwrite(fd, size(A, 2), 'uint32');
	fwrite(fd, sum(sum(A ~= 0)), 'uint32');
	
	for i = 1: size(A, 1)
		for j = 1: size(A,2)
			if A(i, j) ~= 0
				fwrite(fd, i, 'uint32');
				fwrite(fd, j, 'uint32');
				fwrite(fd, A(i, j), 'double');
			end
		end
	end

	fclose(fd);

	ret = true;
	return;

