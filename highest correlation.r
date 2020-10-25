# highest absolute correlation between 2 columns


find_highest_correlated = function(df, column) {
	curr = 0
	highest = 0
	for (i in names(hr_df[ ,!(colnames(hr_df) == "left")])) {
		curr = cor(hr_df[,i], hr_df['left'],  method = "pearson")
		if (abs(curr) > highest) {
			top = i
			highest = abs(curr)
		}
	}
  return(top)
}

### Click 'Run' to execute test code
test_case = find_highest_correlated(hr_df, 'left')
