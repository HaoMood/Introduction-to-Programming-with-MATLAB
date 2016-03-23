function m = June2015()
	days = ['Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'; 'Sun'];
	m = [];
	for i = 1: 30
		cl{1} = 'June';
		cl{2} = i;
		cnt = mod(i, 7);
		if cnt == 0
			cnt = 7;
		end
		cl{3} = days(cnt, :);
		m = [m; cl];
	end
