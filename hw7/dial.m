function ret = dial(str)
	check = '22233344455566670778889990';
	ret = zeros(size(str));
	for i = 1: size(str, 2)
		if isstrprop(str(i), 'digit') || str(i) == '#' || str(i) == '*'
			ret(i) = str(i);
		else
			if isstrprop(str(i), 'alpha') 
				if str(i) == 'Q' || str(i) == 'Z' || (str(i) <= 'z' && str(i)>= 'a')
					ret = [];
					return;
				else
					ret(i) = check(str(i) - 'A' + 1);
				end
			else
				if str(i) == '-' || str(i) == ' ' || str(i) == '(' || str(i) == ')'
					ret(i) = ' ';
				else
					ret = [];
					return;
				end
			end
		end
	end
	ret = char(ret);
