function [even_A, odd_A] = separate_by_two(A)
	odd_A = A(logical(mod(A, 2)))';
	even_A = A(logical(~mod(A, 2)))';
