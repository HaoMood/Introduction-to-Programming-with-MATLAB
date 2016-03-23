function coded = codeit(txt)
	for i = 1: size(txt, 2)
		if txt(i) <= 'z' && txt(i) >= 'a'
			coded(i) = char('z' - txt(i) + 'a');
		else
			if txt(i) <= 'Z' && txt(i) >= 'A'
				coded(i) = char('Z' - txt(i) + 'A');
			else
				coded(i) = txt(i);
			end
		end
	end
