return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		image = {
			enabled = true,
			doc = {
				inline = true,
				max_height = 10,
				float = false,
			},
		},
		bigfile = { enabled = true },
		bufdelete = { enabled = true },
		quickfile = { enabled = true },
		words = { enabled = true, notify_end = false },
		rename = { enabled = true },

		notifier = {
			enabled = true,
			style = "minimal",
		},
		explorer = {
			enabled = true,
			replace_netrw = true,
			trash = true,
		},

		indent = {
			enabled = true,
			indent = { char = "╎" },
			scope = { enabled = false },
		},

		picker = {
			enabled = true,
			prompt = "> ",
			layout = "custom_bottom",
			sources = {
				explorer = {
					layout = "custom_explorer",
					jump = { close = true },
				},
			},
			layouts = {
				custom_explorer = {
					layout = {
						box = "horizontal",
						backdrop = true,
						width = 0.9,
						height = 0.8,
						border = "none",
						{
							box = "vertical",
							{
								win = "input",
								height = 1,
								border = "double",
								title = "{title} {live} {flags}",
								title_pos = "center",
							},
							{ win = "list", border = "double" },
						},
						{
							win = "preview",
							title = "{preview:Preview}",
							width = 0.65,
							border = "single",
							title_pos = "center",
							wo = {
								relativenumber = false, -- Disables relative line numbers
								signcolumn = "no",
							},
						},
					},
				},
				custom_bottom = {
					reverse = true,
					layout = {
						box = "horizontal",
						backdrop = true,
						width = 0.8,
						height = 0.8,
						border = "none",
						{
							box = "vertical",
							{ win = "list", title = " Results ", title_pos = "center", border = "double" },
							{
								win = "input",
								height = 1,
								border = "double",
								title = "{title} {live} {flags}",
								title_pos = "center",
							},
						},
						{
							win = "preview",
							title = "{preview:Preview}",
							width = 0.65,
							border = "single",
							title_pos = "center",
							wo = {
								relativenumber = false, -- Disables relative line numbers
								signcolumn = "no",
							},
						},
					},
				},
			},
		},
	},
	keys = {
        -- stylua: ignore start
        -- Top Pickers & Explorer
        { "<leader>r", function() Snacks.picker.resume() end, desc = "[R]esume" },
        { "<leader>e", function() Snacks.explorer() end, desc = "File [E]xplorer" },
        { "<leader>n", function() Snacks.picker.notifications() end, desc = "[N]otification History" },
        { "<leader>u", function() Snacks.picker.undo() end, desc = "[U]ndo History" },
        -- Find
        { "<leader>fb", function() Snacks.picker.buffers() end, desc = "[F]ind [B]uffers" },
        { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
        { "<leader>ff", function() Snacks.picker.files() end, desc = "[F]ind [F]iles" },
        { "<leader>fr", function() Snacks.picker.recent() end, desc = "[F]ind [R]ecent" },
        { "<leader>fh", function() Snacks.picker.help() end, desc = "[F]ind [H]elp Pages" },
        { "<leader>fk", function() Snacks.picker.keymaps() end, desc = "[F]ind [K]eymaps" },
        -- Grep
        { "<leader>f/", function() Snacks.picker.lines() end, desc = "[/] [F]ind in Current Buffer Line" },
        { "<leader>fgb", function() Snacks.picker.grep_buffers() end, desc = "[F]ind by [G]rep in [B]uffers" },
        { "<leader>fga", function() Snacks.picker.grep() end, desc = "[F]ind by [G]rep in [A]ll" },
        { "<leader>fw", function() Snacks.picker.grep_word() end, desc = " [F]ind [W]ord (Visual selection or word)", mode = { "n", "x" } },
        -- Git
        { "<leader>gl", function() Snacks.picker.git_log() end, desc = "[G]it [L]og" },
        { "<leader>gs", function() Snacks.picker.git_status() end, desc = "[G]it [S]tatus" },
        { "<leader>gh", function() Snacks.picker.git_diff() end, desc = "[G]it [H]unk (Diff)" },
        -- Diagnostic
        { "<leader>da", function() Snacks.picker.diagnostics() end, desc = "[D]iagnostics [A]ll" },
        { "<leader>db", function() Snacks.picker.diagnostics_buffer() end, desc = "[D]iagnostics [B]uffer" },
        { "<leader>dx", function() Snacks.picker.qflist() end, desc = "Quickfi[x] List" },
        -- LSP
        { "gd", function() Snacks.picker.lsp_definitions() end, desc = "[G]oto [d]efinition" },
        { "gD", function() Snacks.picker.lsp_declarations() end, desc = "[G]oto [D]eclaration" },
        { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "[G]oto [R]eferences" },
        { "gI", function() Snacks.picker.lsp_implementations() end, desc = "[G]oto [I]mplementation" },
        { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "[G]oto T[y]pe Definition" },
        { "gai", function() Snacks.picker.lsp_incoming_calls() end, desc = "[G]oto C[a]lls [I]ncoming" },
        { "gao", function() Snacks.picker.lsp_outgoing_calls() end, desc = "[G]oto C[a]lls [O]utgoing" },
        { "<leader>ls", function() Snacks.picker.lsp_symbols() end, desc = "[L]SP [S]ymbols" },
        { "<leader>la", function() Snacks.picker.lsp_workspace_symbols() end, desc = "[L]SP [A]ll Symbols" },

        -- Quit Buffers & Windows (Buf Delete)
        { "<leader>qb", function() Snacks.bufdelete() end, desc = "[Q]uit Current [B]uffer" },
        { "<leader>qa", function() Snacks.bufdelete.all() end, desc = "[Q]uit [A]ll Buffer" },
        { "<leader>qo", function() Snacks.bufdelete.other() end, desc = "[Q]uit [O]ther Buffers" },
        { "<leader>qw", "<cmd>:bd<cr>", desc = "[Q]uit Buffers and [W]indows" },

        -- Words
        { "]]", function() Snacks.words.jump(1, true) end, desc = "Next Reference" },
        { "[[", function() Snacks.words.jump(-1, true) end, desc = "Prev Reference" },

		-- stylua: ignore end
	},
}
