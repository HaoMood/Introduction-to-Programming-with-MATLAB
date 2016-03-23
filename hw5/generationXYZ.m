function generation = generationXYZ(year)
	if year < 1966
		generation = 'O';
	end
	if year >= 1966 && year <= 1980
		generation = 'X';
	end
	if year >= 1981 && year <= 1999
		generation = 'Y';
	end
	if year >= 2000 && year <= 2012
		generation = 'Z';
	end
	if year > 2012
		generation = 'K';
	end
