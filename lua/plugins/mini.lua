return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		require("mini.ai").setup() -- adds around inside kind of stuff
		-- around a, inside i
		-- around next an, inside next in
		-- around prev al, inside next il
		-- goto left g[  goto right g]

		require("mini.move").setup() -- Alt + h/j/k/l to move a text block in visual selection or a line in normal mode

		require("mini.operators").setup({
			evaluate = { prefix = "<M-=>" }, -- Alt + =
			exchange = { prefix = "<M-x>" }, -- Alt + x
			multiply = { prefix = "<M-m>" }, -- Alt + m
			replace = { prefix = "<M-r>" }, -- Alt + r
			sort = { prefix = "<M-s>" }, -- Alt + s
		})

		require("mini.surround").setup({
			mappings = {
				add = "<M-w>a", -- Add surrounding in Normal and Visual modes
				delete = "<M-w>d", -- Delete surrounding
				find = "<M-w>]", -- Find surrounding (to the right)
				find_left = "<M-w>[", -- Find surrounding (to the left)
				highlight = "",
				replace = "<M-w>r", -- Replace surrounding

				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},
		})

		require("mini.pairs").setup()

		require("mini.bracketed").setup({
			indent = { suffix = "" },
			file = { suffix = "" },
			location = { suffix = "" },
			window = { suffix = "" },
			yank = { suffix = "" },
			undo = { suffix = "" },
			treesitter = { suffix = "m" },
		})
		-- ] prev, [ next, capital for last or first
		-- Buffer b
		-- Comment Block c
		-- Diagnostic d
		-- Jumplist j
		-- Old file o
		-- Quickfix q
		-- Treesitter node t
		-- Conflict Marker x

		require("mini.indentscope").setup() -- indentation highlight and some navigation using around inside
		-- ii object scope without borders, ai with borders
		-- goto top indent [i , goto bottom indent ]i

		require("mini.cmdline").setup({
			autocomplete = { enable = false },
		})
	end,
}
