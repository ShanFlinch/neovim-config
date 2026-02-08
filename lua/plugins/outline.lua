return {
	"hedyhli/outline.nvim",
	lazy = true,
	cmd = { "Outline", "OutlineOpen" },
	keys = {
		{ "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
	},
	opts = {
		symbol_folding = {
			autofold_depth = false,
		},
		outline_window = {
			width = 33,
		},
		keymaps = {
			up_and_jump = "<C-p>",
			down_and_jump = "<C-n>",
		},
	},
}
