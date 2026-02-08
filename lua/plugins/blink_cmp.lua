return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		keymap = {
			preset = "default",
			["<Esc>"] = { "cancel", "fallback" },
			["<C-space>"] = {},
			["<C-d>"] = { "show", "show_documentation", "hide_documentation" },
			-- <C-b> documentation scoll back <C-f> documentation scoll forward
			-- <C-y> accept
			-- <C-n> next, <C-p> prev
			-- <C-k> signature toggle
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			menu = { border = "single" },
			documentation = { auto_show = false, window = { border = "single" } },
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },

		-- command line
		cmdline = {
			keymap = { preset = "inherit" },
			completion = {
				menu = { auto_show = true },
			},
		},
	},
	opts_extend = { "sources.default" },
}
