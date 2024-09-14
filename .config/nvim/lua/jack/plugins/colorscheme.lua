return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
		})
		vim.cmd([[colorscheme catppuccin]])
	end,
}

-- return {
-- 	"navarasu/onedark.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("onedark").setup({
-- 			style = "cool",
-- 		})
-- 		vim.cmd([[colorscheme onedark]])
-- 	end,
-- }
