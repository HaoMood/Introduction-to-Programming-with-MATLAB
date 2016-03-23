function grade = letter_grade(score)
	if score >= 91
		grade = 'A';
	end
	if score >= 81 && score <= 90
		grade = 'B';
	end
	if score >= 71 && score <= 80
		grade = 'C';
	end
	if score >= 61 && score <= 70
		grade = 'D';
	end
	if score < 61
		grade = 'F';
	end
