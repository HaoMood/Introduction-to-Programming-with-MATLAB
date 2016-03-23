function num = letter_counter(filename)
	fd = fopen(filename, 'rt');
	if fd < 0
		num = -1;
		return;
	end

	num = 0;
	oneline = fgets(fd);
	while ischar(oneline)
		idx = isstrprop(oneline, 'alpha');
		num = num + sum(idx);
		oneline = fgets(fd);
	end

	fclose(fd);
	return;
