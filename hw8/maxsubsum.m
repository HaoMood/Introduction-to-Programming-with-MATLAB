function [row, col, numrows, numcols, summa] = maxsubsum(A)
	summa = A(1, 1);
	row = 1;
	col = 1;
	numrows = 1;
	numcols = 1;
	for i_len = 1: size(A, 1)
		for j_len = 1: size(A, 2)
			for i = 1: size(A, 1) - i_len + 1;
				for j = 1: size(A, 2) - j_len + 1;
					sub_A = A(i: i + i_len - 1, j: j + j_len - 1);
					if summa < sum(sub_A(:))
						summa = sum(sub_A(:));
						row = i;
						col = j;
						numrows= i_len;
						numcols = j_len;
					end
				end
			end
		end
	end
