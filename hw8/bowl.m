function score = bowl(v)
	score = 0;
	rounds = 1;
	
	if ~isempty(find(v < 0))
		score = -1;
		return;
	end

	i = 1;
	while i <= size(v, 2);
		if rounds == 10
			if v(i) == 10;
				if i + 2 ~= size(v, 2) || (v(i + 1) ~= 10 && v(i + 2) + v(i + 1) > 10);
					score = -1;
					return;
				else
					score = score + 10 + v(i + 1) + v(i + 2);
					return;
				end
			else
				if	i + 2 == size(v, 2) && v(i) + v(i + 1) == 10
					score = score + 10 + v(i + 2);
					return;
				else
					if i + 1 == size(v, 2) && v(i) + v(i + 1) < 10
						score = score + v(i) + v(i + 1);
						return;
					else
						score = -1;
						return;
					end
				end
			end
		end
		
		fprintf('v(%d) = %d, v(i + 1) = %d, score = %d\n', i, v(i), v(i + 1), score);
		if v(i) == 10
			% strike
			rounds = rounds + 1;
			score = score + 10;
			score = score + v(i + 1) + v(i + 2);
		else
			if v(i) + v(i + 1) == 10
				% spare
				rounds = rounds + 1;
				score = score + 10;
				i = i + 1;
				score = score + v(i + 1);
			else
				if v(i) + v(i + 1) < 10
					rounds = rounds + 1;
					score = score + v(i) + v(i + 1);
					i = i + 1;
				else
					score = -1;
					return;
				end
			end
		end
		i = i + 1;
		fprintf('i = %d, rounds = %d, score = %d\n', i, rounds, score);
	end
