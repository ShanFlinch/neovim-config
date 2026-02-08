return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local colors = require("monochrome.colors")
		local mono = {
			normal = {
				a = { fg = colors.black, bg = colors.gray8, gui = "bold" },
				b = { fg = colors.gray6, bg = colors.gray2 },
				c = { fg = colors.fg, bg = "#111111" },
			},
			insert = {
				a = { fg = colors.black, bg = colors.gray6, gui = "bold" },
				b = { fg = colors.gray6, bg = colors.gray2 },
				c = { fg = colors.fg, bg = "#111111" },
			},
			visual = {
				a = { fg = colors.gray8, bg = colors.gray4, gui = "bold" },
				b = { fg = colors.gray6, bg = colors.gray2 },
				c = { fg = colors.fg, bg = "#111111" },
			},
			replace = {
				a = { fg = colors.white, bg = colors.gray6, gui = "bold" },
				b = { fg = colors.gray6, bg = colors.gray2 },
				c = { fg = colors.fg, bg = "#111111" },
			},
			command = {
				a = { fg = colors.gray1, bg = colors.white, gui = "bold" },
				b = { fg = colors.gray6, bg = colors.gray2 },
				c = { fg = colors.fg, bg = "111111" },
			},
			inactive = {
				a = { fg = colors.white, bg = colors.fg, gui = "bold" },
				b = { fg = colors.gray6, bg = colors.gray2 },
				c = { fg = colors.fg, bg = "111111" },
			},
		}
		local harpoon_component = require("harpoon_lualine")
		require("lualine").setup({
			options = {
				theme = mono,
				icons_enabled = true,
			},
			sections = {
				lualine_b = {
					"branch",
					"diff",
					{
						"diagnostics",
						diagnostics_color = {
							error = { fg = colors.fg },
							warn = { fg = colors.gray8 },
							info = { fg = colors.gray6 },
							hint = { fg = colors.gray4 },
						},
					},
				},
				lualine_x = { harpoon_component.harpoon, "fileformat", "filetype" },
			},
		})
	end,
}
