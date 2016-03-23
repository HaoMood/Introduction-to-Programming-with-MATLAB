function [time km] = light_time(dist)
	km = 1.609 * dist;
	time = km / 3e5 / 60;
