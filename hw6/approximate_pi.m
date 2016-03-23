function [app, n] = approximate_pi(delta)
	app = 0;
	n = 0;
	while 1
		app = app + sqrt(12) * (-3)^(-n) / (2 * n + 1);
		if(abs(app - pi) <= delta)
			return;
		end
		n = n + 1;
	end
