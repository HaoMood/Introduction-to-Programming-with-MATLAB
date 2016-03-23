function out = movies(hr1, min1, durmin1, hr2, min2, durmin2)
	endtime = hr1 * 60 + min1 + durmin1;
	starttime = hr2 * 60 + min2;
	if starttime - endtime >= 0 && starttime - endtime <= 30
		out = true;
	else
		out = false;
	end
