function num = roman(str)
	str = lower(str);
	nums = {'i', 'ii' 'iii', 'iv', 'v', 'vi', 'vii', 'viii', 'ix', 'x', 'xi', 'xii', 'xiii', 'xiv', 'xv', 'xvi', 'xvii', 'xviii', 'xix', 'xx'};
	for i = 1: 20;
		if strcmp(str, nums{i})
			num = uint8(i);
			return;
		end
	end

	num = uint8(0);
	return;
