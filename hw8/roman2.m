function num = roman2(str)
	num = 0;

	for i = 1: size(str, 2)
		if i + 3 <= size(str, 2) && str(i) == str(i + 1) && str(i) == str(i + 2) && str(i) == str(i + 3)
			num = uint16(0);
			return;
		end
		if i + 2 <= size(str, 2) && str(i) == 'I' && str(i) ~= str(i + 1)
			num = uint16(0);
			return;
		end
		if i + 2 <= size(str, 2) && str(i) == 'X' && str(i + 1) == 'L' && str(i) == str(i + 2)
			num = uint16(0);
			return;
		end

		switch str(i)
			case 'L'
				num = num + 50;
			case 'C'
				num = num + 100;
			case 'V'
				num = num + 5;
			case 'X' 
				if i + 1 <= size(str, 2) && (str(i + 1)  =='C' || str(i + 1) == 'L')
					num = num - 10;
				else
					num = num + 10;
				end
			case 'I' 
				if i + 1 <= size(str, 2) && (str(i + 1) =='X' || str(i + 1) == 'V' || str(i + 1) == 'L' || str(i + 1) == 'C')
					num = num - 1;
				else
					num = num + 1;
				end
			otherwise 
				num = uint16(0);
				return;
		end
	end

	if num < 1 || num > 399
		num = uint16(0);
	else
		num = uint16(num);
	end
	return;

