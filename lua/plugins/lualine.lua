return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"echasnovski/mini.icons",
		"SmiteshP/nvim-navic",
	},
	opts = {
		options = {
			theme = "tokyonight",
			component_separators = "|",
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_c = {
				{
					function()
						return require("nvim-navic").get_location()
					end,
					cond = function()
						return require("nvim-navic").is_available()
					end,
				},
			},
		},
	},
}
