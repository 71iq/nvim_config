require("silicon").setup({
	line_number = true,
	config = function()
		require("silicon").setup({
			font = "Hack=20",
			theme = "tokyonight-night",
			output = {
				path = "/home/ihab/Pictures/Screenshots",
				clipboard = true,
			},
		})
	end,
})
