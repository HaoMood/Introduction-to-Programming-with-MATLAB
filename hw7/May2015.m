function m = May2015()
	m = [];
	days = ['Fri'; 'Sat'; 'Sun'; 'Mon'; 'Tue'; 'Wed'; 'Thu'];
	for i = 1: 31
		st.month = 'May';
		st.date = i;
		cnt = mod(i, 7);
		if cnt == 0;
			cnt = 7;
		end
		st.day = days(cnt, :);
		m = [m, st];
	end
