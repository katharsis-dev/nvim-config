require "staline".setup {
	sections = {
		left = { '  ', 'mode', '    ', 'lsp' },
		mid = {'file_name'},
		right = {'branch', 'cool_symbol', 'line_column' }
	},
	mode_colors = {
		t = "#d4be98",
		i = "#84a598",
		c = "#8fbf7f",
		v = "#fc802d",
		n = "#FFC0CB",
	},
	defaults = {
		true_colors = true,
		line_column = " [%l/%L] :%c  ",
		branch_symbol = " ",
		cool_symbol = ""
	}
}
