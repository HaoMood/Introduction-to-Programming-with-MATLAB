function [s1, s2, sums] = sines(points, ampl, n1, n2)
	if nargin == 0
		points = 1000;
	end
	if nargin <= 1
		ampl = 1;
	end
	if nargin <= 2
		n1 = 100;
	end
	if nargin <= 3
		n2 = 1.05 * n1;
	end

	s1 = zeros(1, points);
	s2 = zeros(1, points);

	period1 = (points - 1) / n1;
	period2 = (points - 1) / n2;

	s1 = ampl * sin(2 * pi / period1 * (0: points - 1));
	s2 = ampl * sin(2 * pi / period2 * (0: points - 1));
	
	sums = s1 + s2;
